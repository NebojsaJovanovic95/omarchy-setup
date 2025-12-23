#!/usr/bin/env bash

# Usage:
# ./collect_files.sh <start_dir> [extension] [output_file]
#
# Defaults:
# extension: log
# output: stdout

set -e

START_DIR="$1"
EXT="${2:-log}"
OUTPUT="${3:-/dev/stdout}"

if [[ -z "$START_DIR" ]]; then
  echo "Usage: $0 <start_dir> [extension] [output_file]"
  exit 1
fi

# Normalize start dir
START_DIR="$(cd "$START_DIR" && pwd)"

# Clear output file only if it's not stdout
if [[ "$OUTPUT" != "/dev/stdout" ]]; then
  > "$OUTPUT"
fi

find "$START_DIR" -type f -name "*.$EXT" | while read -r FILE; do
  REL_PATH="${FILE#$START_DIR/}"

  {
    echo "========================================"
    echo "FILE: $REL_PATH"
    echo "========================================"
    cat "$FILE"
    echo
    echo
  } >> "$OUTPUT"
done
