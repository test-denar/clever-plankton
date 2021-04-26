#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# fetch data from CMS through stackbit-pull
npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://artem-stackbit.ngrok.io/pull/60869a64799afcc147d6883d

# build site
npm run build

echo "stackbit-build.sh: finished build"
