#!/bin/bash
set -euo pipefail

make clean
make build
make pdf
rsync -avP --delete public/* my-site:/usr/share/nginx/html/my-site/
