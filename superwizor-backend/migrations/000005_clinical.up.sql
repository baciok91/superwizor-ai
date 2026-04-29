-- ============================================
-- MODALITIES
-- ============================================
CREATE TABLE modalities (
id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
system_code VARCHAR(20) NOT NULL UNIQUE,
display_name VARCHAR(100) NOT NULL,
therapist_ai_general_prompt JSONB NOT NULL DEFAULT '{}'::jsonb,
therapist_ai_section_prompts JSONB NOT NULL DEFAULT '{}'::jsonb,
patient_ai_general_prompt JSONB NOT NULL DEFAULT '{}'::jsonb,
patient_ai_section_prompts JSONB NOT NULL DEFAULT '{}'::jsonb,
is_supported BOOLEAN NOT NULL DEFAULT TRUE,
created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- Deferred FK z users
ALTER TABLE users
ADD CONSTRAINT fk_users_default_modality
FOREIGN KEY (default_modality_id) REFERENCES modalities(id) ON DELETE SET NULL;

-- ============================================
-- THERAPIST-PATIENT RELATIONS
-- ============================================
CREATE TABLE therapist_patient_relations (
id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
therapist_id UUID NOT NULL REFERENCES users(id) ON DELETE RESTRICT,
patient_id UUID NOT NULL REFERENCES users(id) ON DELETE RESTRICT,
status relation_status NOT NULL DEFAULT 'INVITED',
invited_at TIMESTAMPTZ NOT NULL DEFAULT now(),
activated_at TIMESTAMPTZ,
terminated_at TIMESTAMPTZ,
CONSTRAINT chk_relation_different_users CHECK (therapist_id != patient_id)
);

CREATE UNIQUE INDEX idx_relations_unique_active
ON therapist_patient_relations(therapist_id, patient_id)
WHERE status IN ('INVITED', 'ACTIVE');

CREATE INDEX idx_relations_therapist
ON therapist_patient_relations(therapist_id, status);

CREATE INDEX idx_relations_patient
ON therapist_patient_relations(patient_id, status);

-- ============================================
-- PATIENT FILES
-- ============================================
CREATE TABLE patient_files (
id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
therapist_id UUID NOT NULL REFERENCES users(id) ON DELETE RESTRICT,
patient_id UUID REFERENCES users(id) ON DELETE RESTRICT,
relation_id UUID REFERENCES therapist_patient_relations(id) ON DELETE RESTRICT,
modality_id UUID NOT NULL REFERENCES modalities(id) ON DELETE RESTRICT,
working_alias VARCHAR(255) NOT NULL,
process_type process_type NOT NULL DEFAULT 'INDIVIDUAL',
initial_complaint TEXT,
is_process_closed BOOLEAN NOT NULL DEFAULT FALSE,
has_recording_consent BOOLEAN NOT NULL DEFAULT FALSE,
consent_given_at TIMESTAMPTZ,
first_consultation_at TIMESTAMPTZ,
private_therapist_notes TEXT,
created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
deleted_at TIMESTAMPTZ
);

CREATE INDEX idx_patient_files_therapist
ON patient_files(therapist_id) WHERE deleted_at IS NULL;

CREATE INDEX idx_patient_files_patient
ON patient_files(patient_id) WHERE deleted_at IS NULL;

CREATE INDEX idx_patient_files_modality
ON patient_files(modality_id) WHERE deleted_at IS NULL;

-- ============================================
-- AUDIT EVENTS (basic, dla Fazy 1)
-- ============================================
CREATE TABLE audit_events (
id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
actor_user_id UUID REFERENCES users(id) ON DELETE SET NULL,
organization_id UUID REFERENCES organizations(id) ON DELETE SET NULL,
action VARCHAR(100) NOT NULL,
resource_type VARCHAR(50) NOT NULL,
resource_id UUID,
metadata JSONB NOT NULL DEFAULT '{}'::jsonb,
ip_address INET,
user_agent TEXT,
occurred_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX idx_audit_events_actor ON audit_events(actor_user_id, occurred_at DESC);
CREATE INDEX idx_audit_events_resource ON audit_events(resource_type, resource_id);
CREATE INDEX idx_audit_events_occurred ON audit_events(occurred_at DESC);
