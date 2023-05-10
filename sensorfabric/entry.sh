#!/bin/bash

echo '{"irods_host": "data.cyverse.org", "irods_port": 1247, "irods_user_name": "$IPLANT_USER", "irods_zone_name": "iplant"}' | envsubst > $HOME/.irods/irods_environment.json

export AWS_DEFAULT_REGION=us-east-1

exec jupyter lab --no-browser --LabApp.token="" --LabApp.password=""
