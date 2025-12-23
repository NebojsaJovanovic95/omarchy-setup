#!/usr/bin/env bash

# Usage:
# ./collect_files.sh <start_dir> <extension> <output_file>
#
# Example:
# ./collect_files.sh ./src py output.txt
# ./collect_files.sh /var/log log logs_dump.txt
# ./collect_files.sh . xml all_xml_files.txt

set -e

START_DIR="$1"
EXT="$2"
OUTPUT="$3"

if [[ -z "$START_DIR" || -z "$EXT" || -z "$OUTPUT" ]]; then
  echo "Usage: $0 <start_dir> <extension> <output_file>"
  exit 1
fi

# Clear output file
> "$OUTPUT"

# Normalize start dir
START_DIR="$(cd "$START_DIR" && pwd)"

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
