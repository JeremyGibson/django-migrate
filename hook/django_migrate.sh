#!/usr/bin/env bash
set -x

# Check migrations
python manage.py makemigrations --dry-run | grep 'No changes detected' || (echo 'There are changes which require migrations.' && exit 1)
