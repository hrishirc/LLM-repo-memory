#!/bin/bash

set -e

MODE="$1"
TARGET_DIR="$2"

# Prompt for target directory if not provided
if [ -z "$TARGET_DIR" ]; then
  read -rp "Enter the path to your project directory: " TARGET_DIR
fi

if [ ! -d "$TARGET_DIR" ]; then
  echo "Target directory does not exist: $TARGET_DIR"
  exit 1
fi

copy_dir() {
  SRC_DIR="$1"
  DEST_DIR="$2"
  if [ ! -d "$SRC_DIR" ]; then
    echo "Source directory does not exist: $SRC_DIR"
    return
  fi
  mkdir -p "$DEST_DIR" 2>/dev/null || true
  for SRC_PATH in "$SRC_DIR"/*; do
    NAME=$(basename "$SRC_PATH")
    DEST_PATH="$DEST_DIR/$NAME"
    if [ -d "$SRC_PATH" ]; then
      mkdir -p "$DEST_PATH" 2>/dev/null || true
      copy_dir "$SRC_PATH" "$DEST_PATH"
    elif [ -f "$SRC_PATH" ]; then
      if [ "$MODE" = "create" ] && [ -f "$DEST_PATH" ]; then
        echo "[SKIP] $DEST_PATH already exists."
      else
        cp -f "$SRC_PATH" "$DEST_PATH"
        echo "[COPY] $SRC_PATH -> $DEST_PATH"
      fi
    fi
  done
}

for FOLDER in workflow templates .cursor .clinerules; do
  copy_dir "$FOLDER" "$TARGET_DIR/$FOLDER"
  echo "[DONE] $FOLDER copied."
  echo
done

echo "Installation complete in '$MODE' mode." 