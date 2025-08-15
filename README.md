# DevOps Starter: GCP + Terraform + Jenkins

This repo is a practical scaffold you can run end‑to‑end. Start with `docs/roadmap.md` and `docs/labs.md`.

## Quickstart
1. Create a new GCP project and a service account with roles for:
   - Compute Admin, Kubernetes Engine Admin, Service Account User, Storage Admin, Viewer (tighten later).
2. Put the service account JSON at `~/.gcp/sa.json` (or your preferred path).
3. Edit `gcp/terraform/environments/dev/terraform.tfvars`.
4. `terraform init && terraform apply` from `environments/dev`.
5. Copy the output `kubeconfig` and deploy `/apps/sample-node-app`.
6. Point Jenkins at this repo and use the example pipelines in `jenkins/pipelines`.

> Everything here is intentionally minimal so you can extend it.
