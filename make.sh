#!/usr/bin/env bash

INPUT_USERNAME="$1"
INPUT_APITOKEN="$2"
INPUT_DOCSDIR="$3"

# install requirements.txt if it exists
if [ -f requirements.txt ]; then
  pip install --user -r requirements.txt
fi

if [ -n "$INPUT_DOCSDIR" ]; then
  cd "$INPUT_DOCSDIR" || exit 1
fi

make confluence \
  SPHINXOPTS="-D confluence_server_user=$INPUT_USERNAME -D confluence_server_pass=$INPUT_APITOKEN"
