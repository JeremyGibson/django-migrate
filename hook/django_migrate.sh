#!/usr/bin/env bash
set -o errexit
set -o pipefail
set -o nounset

if command python manage.py makemigrations --dry-run | grep -q 'No changes detected'; then
    exit 0
else
    exit 1
fi