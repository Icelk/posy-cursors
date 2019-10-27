#!/bin/bash

function buildWhite {
	cd "$sourceWhite"
	mkdir -p x1 x1_25 x1_5 x2
	# generate cursors
	BUILD="$sourceWhite"/../posy-white
	OUTPUT="$BUILD"/cursors
	ALIASES="$sourceWhite"/cursorList

	if [ ! -d "$BUILD" ]; then
		mkdir "$BUILD"
	fi
	if [ ! -d "$OUTPUT" ]; then
		mkdir "$OUTPUT"
	fi

	for CUR in config/*.cursor; do
		BASENAME="$CUR"
		BASENAME="${BASENAME##*/}"
		BASENAME="${BASENAME%.*}"
		
		xcursorgen "$CUR" "$OUTPUT/$BASENAME"
	done

	cd "$OUTPUT"	

	#generate aliases
	while read ALIAS; do
		FROM="${ALIAS#* }"
		TO="${ALIAS% *}"

		if [ -e $TO ]; then
			continue
		fi
		ln -sr "$FROM" "$TO"
	done < "$ALIASES"

	cd "$PWD"

	INDEX="$OUTPUT/../index.theme"
	if [ ! -e "$OUTPUT/../$INDEX" ]; then
		touch "$INDEX"
		echo -e "[Icon Theme]\nName=$themeWhite\n" > "$INDEX"
	fi
}

function buildBlack {
	cd "$sourceBlack"
	mkdir -p x1 x1_25 x1_5 x2
	# generate cursors
	BUILD="$sourceBlack"/../posy-black
	OUTPUT="$BUILD"/cursors
	ALIASES="$sourceBlack"/cursorList

	if [ ! -d "$BUILD" ]; then
		mkdir "$BUILD"
	fi
	if [ ! -d "$OUTPUT" ]; then
		mkdir "$OUTPUT"
	fi

	for CUR in config/*.cursor; do
		BASENAME="$CUR"
		BASENAME="${BASENAME##*/}"
		BASENAME="${BASENAME%.*}"
		
		xcursorgen "$CUR" "$OUTPUT/$BASENAME"
	done
	
	cd "$OUTPUT"	

	#generate aliases
	while read ALIAS; do
		FROM="${ALIAS#* }"
		TO="${ALIAS% *}"

		if [ -e $TO ]; then
			continue
		fi
		ln -sr "$FROM" "$TO"
	done < "$ALIASES"

	cd "$PWD"

	INDEX="$OUTPUT/../index.theme"
	if [ ! -e "$OUTPUT/../$INDEX" ]; then
		touch "$INDEX"
		echo -e "[Icon Theme]\nName=$themeBlack\n" > "$INDEX"
	fi
}

function buildBlackTiny {
	cd "$sourceBlackTiny"
	mkdir -p x1 x1_25 x1_5 x2
	# generate cursors
	BUILD="$sourceBlackTiny"/../posy-black-tiny
	OUTPUT="$BUILD"/cursors
	ALIASES="$sourceBlack"/cursorList

	if [ ! -d "$BUILD" ]; then
		mkdir "$BUILD"
	fi
	if [ ! -d "$OUTPUT" ]; then
		mkdir "$OUTPUT"
	fi

	for CUR in config/*.cursor; do
		BASENAME="$CUR"
		BASENAME="${BASENAME##*/}"
		BASENAME="${BASENAME%.*}"
		
		xcursorgen "$CUR" "$OUTPUT/$BASENAME"
	done

	cd "$OUTPUT"	

	#generate aliases
	while read ALIAS; do
		FROM="${ALIAS#* }"
		TO="${ALIAS% *}"

		if [ -e $TO ]; then
			continue
		fi
		ln -sr "$FROM" "$TO"
	done < "$ALIASES"

	cd "$PWD"

	INDEX="$OUTPUT/../index.theme"
	if [ ! -e "$OUTPUT/../$INDEX" ]; then
		touch "$INDEX"
		echo -e "[Icon Theme]\nName=$themeBlackTiny\n" > "$INDEX"
	fi
}

function buildWhiteTiny {
	cd "$sourceWhiteTiny"
	mkdir -p x1 x1_25 x1_5 x2
	# generate cursors
	BUILD="$sourceWhiteTiny"/../posy-white-tiny
	OUTPUT="$BUILD"/cursors
	ALIASES="$sourceWhiteTiny"/cursorList

	if [ ! -d "$BUILD" ]; then
		mkdir "$BUILD"
	fi
	if [ ! -d "$OUTPUT" ]; then
		mkdir "$OUTPUT"
	fi

	for CUR in config/*.cursor; do
		BASENAME="$CUR"
		BASENAME="${BASENAME##*/}"
		BASENAME="${BASENAME%.*}"
		
		xcursorgen "$CUR" "$OUTPUT/$BASENAME"
	done

	cd "$OUTPUT"	

	#generate aliases
	while read ALIAS; do
		FROM="${ALIAS#* }"
		TO="${ALIAS% *}"

		if [ -e $TO ]; then
			continue
		fi
		ln -sr "$FROM" "$TO"
	done < "$ALIASES"

	cd "$PWD"

	INDEX="$OUTPUT/../index.theme"
	if [ ! -e "$OUTPUT/../$INDEX" ]; then
		touch "$INDEX"
		echo -e "[Icon Theme]\nName=$themeWhiteTiny\n" > "$INDEX"
	fi
}

sourceWhite=$PWD/White
themeWhite="Posy White"

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

echo -e "${RED}Gener${COLORLESS}${ORANGE}ating${COLORLESS} ${YELLOW}cur${COLORLESS}${GREEN}sor${COLORLESS} ${BLUE}the${COLORLESS}${PURPLE}mes ...${COLORLESS}"

buildWhite
buildBlack
buildWhiteTiny
buildBlackTiny

echo -e "${RED}\nF${COLORLESS}${ORANGE}I${COLORLESS}${YELLOW}N${COLORLESS}${GREEN}I${COLORLESS}${BLUE}S${COLORLESS}${PURPLE}H${COLORLESS}"
