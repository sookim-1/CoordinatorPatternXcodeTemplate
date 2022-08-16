#!/usr/bin/env sh

# 경로 설정
XCODE_FILE_TEMPLATE_DIR=$HOME'/Library/Developer/Xcode/Templates/File Templates/CoordinatorFile'
XCODE_PROJECT_TEMPLATE_DIR=$HOME'/Library/Developer/Xcode/Templates/Project Templates/Coordinator'
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# 템플릿 복제하기
xcodeFileTemplate () {
  echo "==> Coordinator File 템플릿 복제시작"

  if [ -d "$XCODE_FILE_TEMPLATE_DIR" ]; then
    rm -R "$XCODE_FILE_TEMPLATE_DIR"
  fi
  mkdir -p "$XCODE_FILE_TEMPLATE_DIR"

  cp -R $SCRIPT_DIR/CoordinatorFile.xctemplate "$XCODE_FILE_TEMPLATE_DIR"
}

# 프로젝트 템플릿 복제
xcodeProjectTemplate () {
  echo "==> Coordinator Project 템플릿 복제시작"

  if [ -d "$XCODE_PROJECT_TEMPLATE_DIR" ]; then
    rm -R "$XCODE_PROJECT_TEMPLATE_DIR"
  fi
  mkdir -p "$XCODE_PROJECT_TEMPLATE_DIR"

  cp -R $SCRIPT_DIR/Coordinator.xctemplate "$XCODE_PROJECT_TEMPLATE_DIR"
}

xcodeFileTemplate
xcodeProjectTemplate

echo "==> 성공!"
