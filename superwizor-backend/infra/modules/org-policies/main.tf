variable "project_id" {
  type = string
}

# 1. Ograniczenie regionów tylko do europe-central2
resource "google_project_organization_policy" "resource_location" {
  project    = var.project_id
  constraint = "gcp.resourceLocations"

  list_policy {
    allow {
      values = ["in:europe-central2-locations"]
    }
  }
}

# 2. Wymuszenie kluczy CMEK (Cloud KMS)
resource "google_project_organization_policy" "restrict_cmek" {
  project    = var.project_id
  constraint = "gcp.restrictNonCmekServices"

  list_policy {
    deny {
      all = true
    }
  }
}

# 3. Blokada publicznego IP dla Cloud SQL
resource "google_project_organization_policy" "restrict_sql_public_ip" {
  project    = var.project_id
  constraint = "sql.restrictPublicIp"

  boolean_policy {
    enforced = true
  }
}

# 4. Blokada używania Service Account Keys (wymuszenie Workload Identity)
resource "google_project_organization_policy" "disable_sa_key_creation" {
  project    = var.project_id
  constraint = "iam.disableServiceAccountKeyCreation"

  boolean_policy {
    enforced = true
  }
}
