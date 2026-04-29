-- name: CreateAuditEvent :exec
INSERT INTO audit_events (
  actor_user_id, organization_id, action, resource_type, resource_id, metadata
) VALUES ($1, $2, $3, $4, $5, $6);
