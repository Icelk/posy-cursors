#!/bin/bash

# Variables
_ENDW=197
_ENDWT=394
_ENDB=591
_ENDBT=788
_END=788

RED="\033[0;31m"
ORANGE="\033[0;33m"
YELLOW="\033[1;33m"
GREEN="\033[0;32m"
BLUE="\033[0;34m"
PURPLE="\033[0;35m"
COLORLESS="\033[0m"

source progressBars.sh

source builds.sh

sourceWhite=$PWD/White
themeWhite="Posy White"
dirWhite="White"

sourceBlack=$PWD/Black
themeBlack="Posy Black"

sourceWhiteTiny=$PWD/WhiteTiny
themeWhiteTiny="Posy White Tiny"

sourceBlackTiny=$PWD/BlackTiny
themeBlackTiny="Posy Black Tiny"

RED="\033[0;31m"
ORANGE="\033[0;33m"
YELLOW="\033[1;33m"
GREEN="\033[0;32m"
BLUE="\033[0;34m"
PURPLE="\033[0;35m"
COLORLESS="\033[0m"

echo -e "${RED}Gener${COLORLESS}${ORANGE}ating${COLORLESS} ${YELLOW}cur${COLORLESS}${GREEN}sor${COLORLESS} ${BLUE}the${COLORLESS}${PURPLE}mes.${COLORLESS}"

buildWhite
buildWhiteTiny
buildBlack
buildBlackTiny

echo -e "${RED}\nF${COLORLESS}${ORANGE}I${COLORLESS}${YELLOW}N${COLORLESS}${GREEN}I${COLORLESS}${BLUE}S${COLORLESS}${PURPLE}H${COLORLESS}"
