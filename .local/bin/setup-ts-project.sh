#!/bin/bash

set -euo pipefail

pnpm init
pnpm install -D typescript eslint eslint-config-prettier eslint-plugin-prettier prettier ts-node-dev @types/node @typescript-eslint/eslint-plugin @typescript-eslint/parser
curl https://gist.githubusercontent.com/sentientmachin3/2687fccb297b52da6d51b2bf5ea2eb3e/raw/05ee310b1c3d90c93b15f9da6cc4f3b82e094f28/json > tsconfig.json

mkdir src
