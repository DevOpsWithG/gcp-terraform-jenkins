#!/usr/bin/env bash
set -euo pipefail
SA_JSON="$1" # path to service account key json
gcloud auth activate-service-account --key-file="${SA_JSON}"
gcloud components install gke-gcloud-auth-plugin -q || true
