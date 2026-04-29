# ADR 0001: Infrastructure Foundation (Faza 0) Choices

## Status
Accepted

## Context
We need a robust, scalable, and secure infrastructure foundation for the SuperWizor AI project that adheres strictly to RODO compliance, specifically the "Żelazna Lokalizacja" requirement (forcing all resources to be in the EU, specifically `europe-central2`). We also require zero-trust security without long-lived static credentials, and fully automated deployment.

## Decisions

### 1. Cloud Provider and Region
- **Decision:** Google Cloud Platform (GCP) restricted to `europe-central2`.
- **Reason:** To comply with RODO ("Żelazna Lokalizacja") and minimize latency for Polish users. Enforced via Organization Policies.

### 2. Infrastructure as Code (IaC)
- **Decision:** Terraform combined with Terragrunt.
- **Reason:** Terraform is industry standard, while Terragrunt keeps configurations DRY across environments (staging, production).

### 3. Database
- **Decision:** Cloud SQL for PostgreSQL 16 with the `pgvector` extension.
- **Reason:** We require relational data guarantees with the ability to store and query AI embeddings natively using `pgvector`.
- **Security:** The database will not have a public IP. It will reside in a private VPC and be accessed only via Serverless VPC Access Connectors (from Cloud Run) or a Cloud Run Job (for migrations).

### 4. CI/CD and Authentication
- **Decision:** GitHub Actions using Workload Identity Federation (WIF).
- **Reason:** Eliminates the need to manage static JSON service account keys, greatly reducing security risks.

### 5. Deployment Compute
- **Decision:** Google Cloud Run.
- **Reason:** Fully managed serverless execution environment, excellent for stateless microservices, providing zero-to-n auto-scaling.

### 6. Database Migrations
- **Decision:** Executed via `gcloud run jobs` triggered in GitHub Actions.
- **Reason:** Local migrations are blocked by the private IP restriction on the database. Running migrations as a Cloud Run Job inside the VPC securely applies schema changes without exposing the database publicly.

## Consequences
- **Positive:** High security, no leaked secrets (WIF), full RODO compliance, highly scalable auto-managed infrastructure.
- **Negative:** Increased initial setup complexity (VPC Connectors, WIF, Terragrunt abstractions), requiring migrations to be packaged as Docker images and run via Cloud Run Jobs.
