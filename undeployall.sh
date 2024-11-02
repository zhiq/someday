#!/bin/bash

# List all deployments and extract their IDs using awk
deployment_ids=$(clasp deployments | awk '/Deployments\./ {found=1; next} found && /^-/ {print $2}')

# Delete each deployment
for id in $deployment_ids; do
  clasp undeploy $id
done
