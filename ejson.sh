#!/usr/bin/env bash

set -euo pipefail

args=()
prev_arg=""
for arg in "$@"; do
  if [[ "$prev_arg" == "-f" ]] && [[ "$arg" = *.ejson ]]; then
    arg_dec="${arg}.dec"

    ejson decrypt "$arg" > "$arg_dec"

    arg="$arg_dec"
  fi

  args+=("$arg")
  prev_arg="$arg"
done

$HELM_BIN "${args[@]}"
