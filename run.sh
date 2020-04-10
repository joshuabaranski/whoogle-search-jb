#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Create config json if it doesn't exist
if [[ ! -f $SCRIPT_DIR/app/static/config.json ]]; then
    echo "{}" > $SCRIPT_DIR/app/static/config.json
fi

pkill flask

# TODO: Set up the following for running over https
#--cert=./app/cert.pem --key=./app/key.pem
flask run --host="0.0.0.0"