#!/bin/bash

source progressBars.sh
source buildFunctions.sh

sourceWhite=$PWD/White
themeWhite="Posy White"
dirWhite="White"

sourceBlack=$PWD/Black
themeBlack="Posy Black"

sourceWhiteTiny=$PWD/WhiteTiny
themeWhiteTiny="Posy White Tiny"

sourceBlackTiny=$PWD/BlackTiny
themeBlackTiny="Posy Black Tiny"

echo -e "${RED}Gener${COLORLESS}${ORANGE}ating${COLORLESS} ${YELLOW}cur${COLORLESS}${GREEN}sor${COLORLESS} ${BLUE}the${COLORLESS}${PURPLE}mes.${COLORLESS}"

buildWhite
buildWhiteTiny
buildBlack
buildBlackTiny

echo -e "${RED}\nF${COLORLESS}${ORANGE}I${COLORLESS}${YELLOW}N${COLORLESS}${GREEN}I${COLORLESS}${BLUE}S${COLORLESS}${PURPLE}H${COLORLESS}"
