#!/bin/bash

export AGENT="[bootstrap.sh]"
export PROVIDER=$1
export BASE_PATH="`( cd \"$2\" && pwd )`"

echo "$AGENT Build and deploy starting..."

if [[ -z "$PROVIDER" ]]; then
    echo "$AGENT PROVIDER argument not set."
    echo "$AGENT example command: sh $0 <provider_name>"
    echo "$AGENT Aborting..."
    exit 1
fi

# Set scripts defaults


echo "$AGENT $BASE_PATH"

BUILD_PATH=$BASE_PATH/builds/$PROVIDER

# Set environment variables
export DEBCONF_FRONTEND="noninteractive"
source $BUILD_PATH/vars.sh
$BASE_PATH/builds/utils/info.sh

echo "$AGENT Ensure apt is up to date"
# apt-get -q update
# apt-get -q upgrade
# apt-get -yq install debconf-utils

# # Build scripts
# $BUILD_PATH/build-php.sh
# $BUILD_PATH/build-mysql.sh
# $BUILD_PATH/build-site.sh
# $BUILD_PATH/build-nginx.sh
# $BUILD_PATH/build-security.sh

echo "$AGENT Build complete!"