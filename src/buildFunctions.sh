#!/bin/bash

function buildWhite {
	cd "$sourceWhite"
	# generate cursors
	BUILD="$sourceWhite"/../../themes/posy-white
	OUTPUT="$BUILD"/cursors
	ALIASES="$sourceWhite"/cursorList

	if [ ! -d "$BUILD" ]; then
		mkdir "$BUILD"
	fi
	if [ ! -d "$OUTPUT" ]; then
		mkdir "$OUTPUT"
	
	fi
    rm -rf "$sourceWhite"/x1*
    
    mkdir {"$sourceWhite"/x1,$sourceWhite/x1_25,$sourceWhite/x1_5}
	
	cd "$sourceWhite"/x2
    
    _STARTW=1
	
	for file in *.png
    do
        cursor=$(echo "$file" | cut -f 1 -d '.')
        convert $file -resize 32x32 ../x1/$file > /dev/null 2>&1
        convert $file -resize 40x40 ../x1_25/$file > /dev/null 2>&1
        convert $file -resize 48x48 ../x1_5/$file > /dev/null 2>&1
        _STARTW=$((_STARTW+1))
        ProgressBar_RED ${_STARTW} ${_END}
    done

	cd "$sourceWhite"
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

function buildWhiteTiny {
	cd "$sourceWhiteTiny"
	# generate cursors
	BUILD="$sourceWhiteTiny"/../../themes/posy-white-tiny
	OUTPUT="$BUILD"/cursors
	ALIASES="$sourceWhiteTiny"/cursorList

	if [ ! -d "$BUILD" ]; then
		mkdir "$BUILD"
	fi
	if [ ! -d "$OUTPUT" ]; then
		mkdir "$OUTPUT"
	
	fi
    rm -rf "$sourceWhiteTiny"/x1*
    
    mkdir {"$sourceWhiteTiny"/x1,$sourceWhiteTiny/x1_25,$sourceWhiteTiny/x1_5}
	
	cd "$sourceWhiteTiny"/x2
    
    _STARTWT=197
	
	for file in *.png
    do
        cursor=$(echo "$file" | cut -f 1 -d '.')
        convert $file -resize 32x32 ../x1/$file > /dev/null 2>&1
        convert $file -resize 40x40 ../x1_25/$file > /dev/null 2>&1
        convert $file -resize 48x48 ../x1_5/$file > /dev/null 2>&1
        _STARTWT=$((_STARTWT+1))
        ProgressBar_ORANGE ${_STARTWT} ${_END}
    done

	cd "$sourceWhiteTiny"
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

function buildBlack {
	cd "$sourceBlack"
	# generate cursors
	BUILD="$sourceBlack"/../../themes/posy-black
	OUTPUT="$BUILD"/cursors
	ALIASES="$sourceBlack"/cursorList

	if [ ! -d "$BUILD" ]; then
		mkdir "$BUILD"
	fi
	if [ ! -d "$OUTPUT" ]; then
		mkdir "$OUTPUT"
	
	fi
    rm -rf "$sourceBlack"/x1*
    
    mkdir {"$sourceBlack"/x1,$sourceBlack/x1_25,$sourceBlack/x1_5}
	
	cd "$sourceBlack"/x2
    
    _STARTB=394
	
	for file in *.png
    do
        cursor=$(echo "$file" | cut -f 1 -d '.')
        convert $file -resize 32x32 ../x1/$file > /dev/null 2>&1
        convert $file -resize 40x40 ../x1_25/$file > /dev/null 2>&1
        convert $file -resize 48x48 ../x1_5/$file > /dev/null 2>&1
        _STARTB=$((_STARTB+1))
        ProgressBar_YELLOW ${_STARTB} ${_END}
    done

	cd "$sourceBlack"
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
	# generate cursors
	BUILD="$sourceBlackTiny"/../../themes/posy-black-tiny
	OUTPUT="$BUILD"/cursors
	ALIASES="$sourceBlackTiny"/cursorList

	if [ ! -d "$BUILD" ]; then
		mkdir "$BUILD"
	fi
	if [ ! -d "$OUTPUT" ]; then
		mkdir "$OUTPUT"
	
	fi
    rm -rf "$sourceBlackTiny"/x1*
    
    mkdir {"$sourceBlackTiny"/x1,$sourceBlackTiny/x1_25,$sourceBlackTiny/x1_5}
	
	cd "$sourceBlackTiny"/x2
    
    _STARTBT=591
	
	for file in *.png
    do
        cursor=$(echo "$file" | cut -f 1 -d '.')
        convert $file -resize 32x32 ../x1/$file > /dev/null 2>&1
        convert $file -resize 40x40 ../x1_25/$file > /dev/null 2>&1
        convert $file -resize 48x48 ../x1_5/$file > /dev/null 2>&1
        _STARTBT=$((_STARTBT+1))
        ProgressBar_GREEN ${_STARTBT} ${_END}
    done

	cd "$sourceBlackTiny"
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
