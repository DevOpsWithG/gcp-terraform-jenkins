# Hands‑on Labs Overview

1. **VPC + GKE via Terraform**
   - Apply `environments/dev` then `prod` using workspaces.
   - Output kubeconfig and deploy app with Kustomize.

2. **Jenkins Review & Deploy Pipelines**
   - Connect to Git; stash Docker creds; use service account JSON.
   - Review pipeline gates merge; Deploy pipeline tags + promotes.

3. **Observability**
   - Create uptime check and alerting policy. Trigger a failure and verify alert.

4. **Data Flow**
   - Pub/Sub topic → Dataflow template (Pub/Sub to BigQuery) → BigQuery table.

5. **Security**
   - Store DB password in Secret Manager; mount via GKE CSI driver.
   - Encrypt app secret with KMS in Terraform and rotate.
