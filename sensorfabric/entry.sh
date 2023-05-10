#!/bin/bash

echo '{"irods_host": "data.cyverse.org", "irods_port": 1247, "irods_user_name": "$IPLANT_USER", "irods_zone_name": "iplant"}' | envsubst > $HOME/.irods/irods_environment.json

# Write the environment variables into the .aws files.
FILE=/home/jovyan/.aws/credentials
echo "[uoa]" >> $FILE
echo "aws_access_key_id=$AWS_ACCESS_KEY" >> $FILE
echo "aws_secret_access_key=$AWS_SECRET_KEY" >> $FILE
echo "region=us-east-1" >> $FILE
export AWS_PROFILE="uoa"

exec jupyter lab --no-browser --LabApp.token="" --LabApp.password=""
