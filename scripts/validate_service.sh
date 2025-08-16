#!/usr/bin/env bash
set -eux
# Wait up to ~30s for health
for i in {1..30}; do
  if curl -fsS http://localhost:3000/health >/dev/null; then
    exit 0
  fi
  sleep 1
done
echo "Service did not become healthy"
exit 1
