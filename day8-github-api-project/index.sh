#!/usr/bin/env bash
# This script will list all the users associated with the Repository
# and revokes access for whoever is not a collaborator
# Author: Naineel Soyantar
# Version: 1.0
# Date: 2024-06-11

# BaseApi path to be called -
BASE_API_URL="https://api.github.com"

# USERNAME and Token from the env
# shellcheck disable=SC2154
USERNAME=$username
TOKEN=$github_access_token

REPO_OWNER="$1"
REPO_NAME="$2"

list_all_users_read_access() {
    local collaborators_endpoint="repos/${REPO_OWNER}/${REPO_NAME}/collaborators"
    local curl_url="${BASE_API_URL}/${collaborators_endpoint}"
    echo "Curl URL: ${curl_url}"
    echo "Token: ${TOKEN}"
    local collaborators

    collaborators=$(curl -L \
    -H "Authorization: Bearer ${TOKEN}" \
    -H "Accept: application/vnd.github+json" \
    "${curl_url}" | jq '.[] | select (.permissions.pull == true) | .login') # jq is a command-line JSON processor - only allows the users with read access (pull: true) to access the repository

    echo "The collaborators are: "
    echo "${collaborators}"
}

echo "Listing all the users with read_access to the ${REPO_OWNER}/${REPO_NAME}"
list_all_users_read_access
