#!/usr/bin/env bash
# This script will list the commands for calling the remote server at
# http://{{}}/api/v1

curl -L http://localhost:4747/api/v1/health | jq -r '{awsRemotePortMessage: .message, awsRemotePortStaus: .status}' >> .aws-remote-port-response-sheet
