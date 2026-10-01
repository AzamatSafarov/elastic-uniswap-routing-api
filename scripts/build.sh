#!/usr/bin/env bash
set -euo pipefail
shopt -s globstar extglob nullglob

npx typechain --target ethers-v5 --out-dir lib/types/ext lib/abis/**/*.json
npx typechain --target ethers-v5 --out-dir lib/types/v3 ./node_modules/@uniswap/?(v3-core|v3-periphery)/artifacts/contracts/**/*.json
npx tsc
