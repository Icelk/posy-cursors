#!/bin/bash

function build-white {
	cd "$source-white"
	# generate cursors
	BUILD="$source-white"/../../themes/posy-white
	OUTPUT="$BUILD"/cursors
	ALIASES="$source-white"/cursor-List

	if [ ! -d "$BUILD" ]; then
		mkdir "$BUILD"
	fi
	if [ ! -d "$OUTPUT" ]; then
		mkdir "$OUTPUT"
	
	fi
    rm -rf "$source-white"/x1*
    
    mkdir {"$source-white"/x1,$source-white/x1_25,$source-white/x1_5}
	
	cd "$source-white"/x2
    
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

	cd "$source-white"
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
		echo -e "[Icon Theme]\nName=$theme-white\n" > "$INDEX"
	fi
}

function build-white-tiny {
	cd "$source-white-tiny"
	# generate cursors
	BUILD="$source-white-tiny"/../../themes/posy-white-tiny
	OUTPUT="$BUILD"/cursors
	ALIASES="$source-white-tiny"/cursor-List

	if [ ! -d "$BUILD" ]; then
		mkdir "$BUILD"
	fi
	if [ ! -d "$OUTPUT" ]; then
		mkdir "$OUTPUT"
	
	fi
    rm -rf "$source-white-tiny"/x1*
    
    mkdir {"$source-white-tiny"/x1,$source-white-tiny/x1_25,$source-white-tiny/x1_5}
	
	cd "$source-white-tiny"/x2
    
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

	cd "$source-white-tiny"
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
		echo -e "[Icon Theme]\nName=$theme-white-tiny\n" > "$INDEX"
	fi
}

function build-black {
	cd "$source-black"
	# generate cursors
	BUILD="$source-black"/../../themes/posy-black
	OUTPUT="$BUILD"/cursors
	ALIASES="$source-black"/cursor-List

	if [ ! -d "$BUILD" ]; then
		mkdir "$BUILD"
	fi
	if [ ! -d "$OUTPUT" ]; then
		mkdir "$OUTPUT"
	
	fi
    rm -rf "$source-black"/x1*
    
    mkdir {"$source-black"/x1,$source-black/x1_25,$source-black/x1_5}
	
	cd "$source-black"/x2
    
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

	cd "$source-black"
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
		echo -e "[Icon Theme]\nName=$theme-black\n" > "$INDEX"
	fi
}

function build-black-tiny {
	cd "$source-black-tiny"
	# generate cursors
	BUILD="$source-black-tiny"/../../themes/posy-black-tiny
	OUTPUT="$BUILD"/cursors
	ALIASES="$source-black-tiny"/cursor-List

	if [ ! -d "$BUILD" ]; then
		mkdir "$BUILD"
	fi
	if [ ! -d "$OUTPUT" ]; then
		mkdir "$OUTPUT"
	
	fi
    rm -rf "$source-black-tiny"/x1*
    
    mkdir {"$source-black-tiny"/x1,$source-black-tiny/x1_25,$source-black-tiny/x1_5}
	
	cd "$source-black-tiny"/x2
    
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

	cd "$source-black-tiny"
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
		echo -e "[Icon Theme]\nName=$theme-black-tiny\n" > "$INDEX"
	fi
}
