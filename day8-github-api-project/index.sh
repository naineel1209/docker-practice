#!/usr/bin/env zsh
# This script will list all the users associated with the Repository
# and revokes access for whoever is not a collaborator
# Author: Naineel Soyantar
# Version: 1.0
# Date: 2024-06-11

#BaseApi path to be called -
BASE_API_URL="https://api.github.com";

#USERNAME and Token from the env
USERNAME=$username
TOKEN=$github_access_token

REPO_OWNER=$1
REPO_NAME=$2

function list_all_users_read_access {
        local collaborators_endpoint="repos/${REPO_OWNER}/${REPO_NAME}/collaborators"

        local curl_url="${BASE_API_URL}/${collaborators_endpoint}";

        collaborators=$(curl -s -u "${USERNAME}:${TOKEN}" "$curl_url")

        echo "${collaborators}"
}


echo "Listing all the users with read_access to the ${REPO_OWNER}/${REPO_NAME}"
list_all_users_read_access
