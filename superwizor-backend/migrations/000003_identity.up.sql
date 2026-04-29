-- ============================================
-- ADDRESSES
-- ============================================
CREATE TABLE addresses (
id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
country_code CHAR(2) NOT NULL,
region VARCHAR(100),
city VARCHAR(100) NOT NULL,
postal_code VARCHAR(20) NOT NULL,
street_line VARCHAR(255) NOT NULL,
building_number VARCHAR(20) NOT NULL,
unit_number VARCHAR(20),
directions TEXT,
created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
CONSTRAINT chk_country_code_iso CHECK (country_code ~ '^[A-Z]{2}$')
);

-- ============================================
-- ORGANIZATIONS
-- ============================================
CREATE TABLE organizations (
id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
legal_name VARCHAR(255) NOT NULL,
tax_id VARCHAR(50),
vat_id_eu VARCHAR(20),
headquarters_address_id UUID REFERENCES addresses(id) ON DELETE RESTRICT,
primary_admin_user_id UUID,
type organization_type NOT NULL DEFAULT 'SOLO',
created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
deleted_at TIMESTAMPTZ
);

CREATE INDEX idx_organizations_tax_id ON organizations(tax_id) WHERE deleted_at IS NULL;
CREATE INDEX idx_organizations_vat_id_eu ON organizations(vat_id_eu) WHERE deleted_at IS NULL;

-- ============================================
-- USERS
-- ============================================
CREATE TABLE users (
id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
role user_role NOT NULL,
organization_id UUID REFERENCES organizations(id) ON DELETE RESTRICT,
default_modality_id UUID,
billing_address_id UUID REFERENCES addresses(id) ON DELETE SET NULL,
firebase_uid VARCHAR(128) NOT NULL UNIQUE,
email VARCHAR(255) NOT NULL UNIQUE,
phone_number VARCHAR(20),
is_email_verified BOOLEAN NOT NULL DEFAULT FALSE,
first_name VARCHAR(100) NOT NULL,
last_name VARCHAR(100) NOT NULL,
professional_title VARCHAR(255),
credentials_number VARCHAR(50),
biography TEXT,
avatar_url VARCHAR(500),
ui_language VARCHAR(10) NOT NULL DEFAULT 'pl',
timezone VARCHAR(50) NOT NULL DEFAULT 'Europe/Warsaw',
has_accepted_tos BOOLEAN NOT NULL DEFAULT FALSE,
has_marketing_consent BOOLEAN NOT NULL DEFAULT FALSE,
created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
deleted_at TIMESTAMPTZ,
CONSTRAINT chk_users_email_format CHECK (
email ~* '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'
)
);

CREATE INDEX idx_users_firebase_uid ON users(firebase_uid) WHERE deleted_at IS NULL;
CREATE INDEX idx_users_organization_id ON users(organization_id) WHERE deleted_at IS NULL;
CREATE INDEX idx_users_role ON users(role) WHERE deleted_at IS NULL;

-- Deferred FK
ALTER TABLE organizations
ADD CONSTRAINT fk_organizations_primary_admin
FOREIGN KEY (primary_admin_user_id) REFERENCES users(id) ON DELETE RESTRICT;
