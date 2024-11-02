#!/bin/bash

# Deploy the project and capture the deployment ID
DEPLOY_OUTPUT=$(clasp deploy)
DEPLOY_ID=$(echo "$DEPLOY_OUTPUT" | grep -o 'AKfycb[0-9A-Za-z_-]*')

# Check if deployment ID was found
if [ -z "$DEPLOY_ID" ]; then
  echo "Deployment failed or deployment ID not found."
  exit 1
fi

# Construct the web app URL
WEB_APP_URL="https://script.google.com/macros/s/$DEPLOY_ID/exec"

# Open the URL in the default web browser
open "$WEB_APP_URL"
