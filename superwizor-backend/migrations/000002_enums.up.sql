-- ============================================
-- IDENTITY ENUMS
-- ============================================
CREATE TYPE user_role AS ENUM ('THERAPIST', 'PATIENT');
CREATE TYPE organization_type AS ENUM ('SOLO', 'CLINIC', 'ENTERPRISE');

-- ============================================
-- BILLING ENUMS (potrzebne dla FK z users.organization_id)
-- ============================================
CREATE TYPE plan_tier AS ENUM ('SOLO', 'PRO', 'CLINIC', 'PATIENT');
CREATE TYPE billing_cycle AS ENUM ('MONTHLY', 'SEMI_ANNUAL', 'ANNUAL');
CREATE TYPE payment_provider AS ENUM (
'STRIPE', 'P24', 'APPLE_IAP', 'GOOGLE_IAP', 'MANUAL'
);
CREATE TYPE subscription_status AS ENUM (
'TRIALING', 'ACTIVE', 'PAST_DUE', 'CANCELED', 'INCOMPLETE', 'PAUSED'
);

-- ============================================
-- CLINICAL ENUMS
-- ============================================
CREATE TYPE relation_status AS ENUM (
'INVITED', 'ACTIVE', 'PAUSED', 'TERMINATED'
);
CREATE TYPE process_type AS ENUM (
'INDIVIDUAL', 'COUPLE', 'FAMILY', 'GROUP'
);
CREATE TYPE contact_form AS ENUM ('OFFICE', 'ONLINE', 'FIELD', 'PHONE');
CREATE TYPE session_status AS ENUM (
'CREATED', 'RECORDING', 'UPLOADING', 'TRANSCRIBING',
'ANALYZING', 'COMPLETED', 'FAILED', 'CANCELED'
);
CREATE TYPE upload_status AS ENUM (
'PENDING', 'UPLOADED', 'PROCESSING', 'FAILED', 'EXPIRED'
);

-- ============================================
-- AUDIT ENUMS
-- ============================================
CREATE TYPE outbox_status AS ENUM (
'PENDING', 'PUBLISHED', 'FAILED', 'EXPIRED'
);
