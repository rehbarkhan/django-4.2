#!/bin/sh

set -e

sh /scripts/wait_for_db.sh

echo 'running django development server'
python /app/manage.py runserver 0.0.0.0:8000