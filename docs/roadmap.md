# 12‑Week Plan (GCP + Terraform + Jenkins)

Week 1–2: Foundations
- Set up GCP project, billing, IAM, service account for automation.
- Install gcloud, terraform, docker, kubectl, and Jenkins (local or VM).
- Create VPC + subnets with Terraform; enable required APIs.

Week 3–4: Kubernetes on GKE with Terraform
- Provision GKE (Autopilot or Standard) and node pool.
- Deploy sample app to GKE from Jenkins.
- Add Cloud NAT + firewall rules for private nodes.

Week 5: CI build + image hardening
- Jenkins review pipeline: build, test, lint, SCA/scan, push image.
- Use Trivy or Grype for image scan.

Week 6: CD to GKE
- Deploy via kubectl or Helm from Jenkins.
- Blue/green or canary with Deployment strategies; add health checks.

Week 7: Observability
- Cloud Monitoring + Logging; custom metrics; alerts to email/Slack.
- Export logs to BigQuery or GCS for retention.

Week 8: Data services
- Provision Cloud SQL; connect app using Secrets + Workload Identity.
- Pub/Sub → Dataflow template → BigQuery quick pipeline.

Week 9: Serverless
- Cloud Run and Cloud Functions build & deploy from Jenkins.
- Compare cost/perf to GKE for a smaller service.

Week 10: Security
- KMS, Secret Manager, IAP, Binary Authorization (optional), org policies.
- Threat model + hardening checklist.

Week 11: Networking + CDN
- External HTTP(S) LB for GKE/Cloud Run; Cloud CDN; Cloud Armor WAF.
- Private service access; VPC‑SC (theory).

Week 12: Capstone
- Multi‑env (dev/prod) promotion, approvals, rollbacks.
- Cost dashboard and SLOs; run an incident drill.
