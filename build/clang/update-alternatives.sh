#!/bin/sh

CLANG_DIR="/usr/bin"
LLVM_DIR="/usr/bin"
CLANG_VERSION="10"

CLANG_BIN="clang++ clang"
CC_BIN="c++ cc"

for bin in ${CLANG_BIN}; do
  sudo update-alternatives --install /usr/bin/${bin} ${bin} ${CLANG_DIR}/${bin}-${CLANG_VERSION} 10
done

for bin in $(find ${LLVM_DIR} -name "llvm-*-${CLANG_VERSION}"); do
  BIN=${bin%-*}
  sudo update-alternatives --install ${BIN} ${BIN##*/} ${bin} 10
done

sudo update-alternatives --install /usr/bin/c++ c++ ${CLANG_DIR}/clang++-${CLANG_VERSION} 50
sudo update-alternatives --install /usr/bin/cc cc ${CLANG_DIR}/clang-${CLANG_VERSION} 50
