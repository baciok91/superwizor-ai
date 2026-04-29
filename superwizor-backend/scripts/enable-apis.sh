#!/bin/bash
set -euo pipefail

PROJECT_ID="${1:?Usage: $0 <project-id>}"

APIS_BATCH_1=(
  "run.googleapis.com"
  "artifactregistry.googleapis.com"
  "cloudbuild.googleapis.com"
  "container.googleapis.com"
  "sqladmin.googleapis.com"
  "storage.googleapis.com"
  "firestore.googleapis.com"
  "compute.googleapis.com"
  "vpcaccess.googleapis.com"
  "servicenetworking.googleapis.com"
  "dns.googleapis.com"
  "iam.googleapis.com"
  "cloudkms.googleapis.com"
  "secretmanager.googleapis.com"
  "iap.googleapis.com"
)

APIS_BATCH_2=(
  "logging.googleapis.com"
  "monitoring.googleapis.com"
  "cloudtrace.googleapis.com"
  "pubsub.googleapis.com"
  "eventarc.googleapis.com"
  "cloudscheduler.googleapis.com"
  "aiplatform.googleapis.com"
  "speech.googleapis.com"
  "cloudresourcemanager.googleapis.com"
  "orgpolicy.googleapis.com"
  "dlp.googleapis.com"
)

echo "Enabling APIs batch 1 in project: ${PROJECT_ID}"
gcloud services enable "${APIS_BATCH_1[@]}" --project="${PROJECT_ID}"

echo "Enabling APIs batch 2 in project: ${PROJECT_ID}"
gcloud services enable "${APIS_BATCH_2[@]}" --project="${PROJECT_ID}"

echo "✅ All APIs enabled"
