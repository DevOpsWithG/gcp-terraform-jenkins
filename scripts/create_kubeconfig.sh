#!/usr/bin/env bash
set -euo pipefail
PROJECT_ID="$1"
CLUSTER="$2"
ZONE="$3"
gcloud container clusters get-credentials "$CLUSTER" --zone "$ZONE" --project "$PROJECT_ID"
