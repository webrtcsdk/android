#!/bin/bash

set -e

# Get VERSION_NAME from gradle.properties
VERSION=`grep -o 'VERSION_NAME=.*' gradle.properties | cut -f2- -d=`

SDK_BIN_URL=https://github.com/webrtcsdk/webrtc-build/releases/download/${VERSION}/libwebrtc.aar

echo "Downloading webrtc-sdk ${VERSION} binary for android."
curl -f -L -O ${SDK_BIN_URL}
