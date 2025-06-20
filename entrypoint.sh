#!/bin/bash

# Initialize superset DB
superset db upgrade

# Create admin user if not exists
export FLASK_APP=superset

if ! superset fab list-users | grep -q admin; then
  superset fab create-admin \
    --username admin \
    --firstname Superset \
    --lastname Admin \
    --email admin@example.com \
    --password admin
fi

# Initialize roles and permissions
superset init

# Start Superset server
superset run -h 0.0.0.0 -p 8088
