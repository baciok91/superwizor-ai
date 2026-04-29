DROP TABLE IF EXISTS audit_events;
DROP TABLE IF EXISTS patient_files;
DROP TABLE IF EXISTS therapist_patient_relations;
ALTER TABLE users DROP CONSTRAINT IF EXISTS fk_users_default_modality;
DROP TABLE IF EXISTS modalities;
