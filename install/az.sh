#!/usr/bin/env bash
# References:
# - https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-linux?pivots=apt

set -o errexit
set -o pipefail

if ! command -v apt > /dev/null; then
    >&2 echo "apt not found"
    exit 90
fi

curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
az version
