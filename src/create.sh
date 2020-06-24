#!/bin/bash

if ! [ -x "$(command -v xcursorgen)" ]; then
  echo 'Error: xcursorgen is not installed.' >&2
  exit 1
fi

if ! [ -x "$(command -v convert)" ]; then
  echo 'Error: imagemagick is not installed.' >&2
  exit 1
fi

source progress-bars.sh
source build-functions.sh

source-white=$PWD/White
theme-white="Posy White"
dir-white="White"

source-black=$PWD/Black
theme-black="Posy Black"

source-white-tiny=$PWD/white-tiny
theme-white-tiny="Posy White Tiny"

source-black-tiny=$PWD/black-tiny
theme-black-tiny="Posy Black Tiny"

echo -e "${RED}Gener${COLORLESS}${ORANGE}ating${COLORLESS} ${YELLOW}cur${COLORLESS}${GREEN}sor${COLORLESS} ${BLUE}the${COLORLESS}${PURPLE}mes.${COLORLESS}"

build-white
build-white-tiny
build-black
build-black-tiny

echo -e "${RED}\nF${COLORLESS}${ORANGE}I${COLORLESS}${YELLOW}N${COLORLESS}${GREEN}I${COLORLESS}${BLUE}S${COLORLESS}${PURPLE}H${COLORLESS}"
