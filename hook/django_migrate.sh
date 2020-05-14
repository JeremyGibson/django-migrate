#!/usr/bin/env bash
set -o errexit
set -o pipefail
set -o nounset

if ! command python manage.py makemigrations --dry-run | grep 'No changes detected'; then
    >&2 echo 'Migrations found'
    exit 1
fi
