ALTER TABLE organizations DROP CONSTRAINT IF EXISTS fk_organizations_primary_admin;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS organizations;
DROP TABLE IF EXISTS addresses;
