#!/usr/bin/env sh

# path - You can set the path directly
XCODE_FILE_TEMPLATE_DIR=$HOME'/Library/Developer/Xcode/Templates/File Templates/CoordinatorFile'
XCODE_PROJECT_TEMPLATE_DIR=$HOME'/Library/Developer/Xcode/Templates/Project Templates/Coordinator'
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# file template copy
xcodeFileTemplate () {
  echo "==> Coordinator File template copy"

  if [ -d "$XCODE_FILE_TEMPLATE_DIR" ]; then
    rm -R "$XCODE_FILE_TEMPLATE_DIR"
  fi
  mkdir -p "$XCODE_FILE_TEMPLATE_DIR"

  cp -R $SCRIPT_DIR/CoordinatorFile.xctemplate "$XCODE_FILE_TEMPLATE_DIR"
}

# project template copy
xcodeProjectTemplate () {
  echo "==> Coordinator Project template copy"

  if [ -d "$XCODE_PROJECT_TEMPLATE_DIR" ]; then
    rm -R "$XCODE_PROJECT_TEMPLATE_DIR"
  fi
  mkdir -p "$XCODE_PROJECT_TEMPLATE_DIR"

  cp -R $SCRIPT_DIR/Coordinator.xctemplate "$XCODE_PROJECT_TEMPLATE_DIR"
}

xcodeFileTemplate
xcodeProjectTemplate

echo "==> success!"
