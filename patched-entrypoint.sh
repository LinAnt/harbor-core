#!/bin/bash

set -e
export KEY_PATH="/etc/kore/key"

echo -n "$secretKey" > "$KEY_PATH"

/harbor/entrypoint.sh
