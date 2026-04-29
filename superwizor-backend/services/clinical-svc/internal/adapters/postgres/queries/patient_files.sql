-- name: CreatePatientFile :one
INSERT INTO patient_files (
  therapist_id, modality_id, working_alias,
  process_type, initial_complaint, has_recording_consent
) VALUES ($1, $2, $3, $4, $5, $6)
RETURNING *;

-- name: GetPatientFile :one
SELECT * FROM patient_files
WHERE id = $1 AND deleted_at IS NULL;

-- name: ListPatientFilesByTherapist :many
SELECT * FROM patient_files
WHERE therapist_id = $1 AND deleted_at IS NULL
ORDER BY created_at DESC
LIMIT $2 OFFSET $3;

-- name: CountPatientFilesByTherapist :one
SELECT COUNT(*) FROM patient_files
WHERE therapist_id = $1 AND deleted_at IS NULL;

-- name: UpdatePatientFile :one
UPDATE patient_files SET
  working_alias = COALESCE(NULLIF($2, ''), working_alias),
  initial_complaint = NULLIF($3, ''),
  private_therapist_notes = NULLIF($4, ''),
  is_process_closed = $5,
  updated_at = now()
WHERE id = $1 AND deleted_at IS NULL
RETURNING *;

-- name: SoftDeletePatientFile :exec
UPDATE patient_files SET deleted_at = now()
WHERE id = $1 AND therapist_id = $2;
