#!/bin/sh
set -e

# Railway: API (Web UI) + render worker on shared /app/jobs volume.
npx tsx src/worker.ts &
exec npx tsx src/server.ts
