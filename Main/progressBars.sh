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

function ProgressBar_RED {
# Process data
    let _progress_R=(${1}*100/${2}*100)/100
    let _done_R=(${_progress_R}*4)/10
    let _left_R=40-$_done_R
# Build progressbar string lengths
    _fill_R=$(printf "%${_done_R}s")
    _empty_R=$(printf "%${_left_R}s")

# 1.2 Build progressbar strings and print the ProgressBar line
# 1.2.1 Output example:                           
# 1.2.1.1 Progress : [########################################] 100%
printf "\rProgress : [${RED}${_fill_R// /\#}${COLORLESS}${_empty_R// /-}] ${_progress_R}%%"
}

function ProgressBar_ORANGE {
# Process data
    let _progress_O=(${1}*100/${2}*100)/100
    let _done_O=(${_progress_O}*4)/10
    let _left_O=40-$_done_O
# Build progressbar string lengths
    _fill_O=$(printf "%${_done_O}s")
    _empty_O=$(printf "%${_left_O}s")

# 1.2 Build progressbar strings and print the ProgressBar line
# 1.2.1 Output example:                           
# 1.2.1.1 Progress : [########################################] 100%
printf "\rProgress : [${ORANGE}${_fill_O// /\#}${COLORLESS}${_empty_O// /-}] ${_progress_O}%%"
}

function ProgressBar_YELLOW {
# Process data
    let _progress_Y=(${1}*100/${2}*100)/100
    let _done_Y=(${_progress_Y}*4)/10
    let _left_Y=40-$_done_Y
# Build progressbar string lengths
    _fill_Y=$(printf "%${_done_Y}s")
    _empty_Y=$(printf "%${_left_Y}s")

# 1.2 Build progressbar strings and print the ProgressBar line
# 1.2.1 Output example:                           
# 1.2.1.1 Progress : [########################################] 100%
printf "\rProgress : [${YELLOW}${_fill_Y// /\#}${COLORLESS}${_empty_Y// /-}] ${_progress_Y}%%"
}

function ProgressBar_GREEN {
# Process data
    let _progress_G=(${1}*100/${2}*100)/100
    let _done_G=(${_progress_G}*4)/10
    let _left_G=40-$_done_G
# Build progressbar string lengths
    _fill_G=$(printf "%${_done_G}s")
    _empty_G=$(printf "%${_left_G}s")

# 1.2 Build progressbar strings and print the ProgressBar line
# 1.2.1 Output example:                           
# 1.2.1.1 Progress : [########################################] 100%
printf "\rProgress : [${GREEN}${_fill_G// /\#}${COLORLESS}${_empty_G// /-}] ${_progress_G}%%"
}

function ProgressBar_BLUE {
# Process data
    let _progress_B=(${1}*100/${2}*100)/100
    let _done_B=(${_progress_B}*4)/10
    let _left_B=40-$_done_B
# Build progressbar string lengths
    _fill_B=$(printf "%${_done_B}s")
    _empty_B=$(printf "%${_left_B}s")

# 1.2 Build progressbar strings and print the ProgressBar line
# 1.2.1 Output example:                           
# 1.2.1.1 Progress : [########################################] 100%
printf "\rProgress : [${BLUE}${_fill_B// /\#}${COLORLESS}${_empty_B// /-}] ${_progress_B}%%"
}

function ProgressBar_PURPLE {
# Process data
    let _progress_P=(${1}*100/${2}*100)/100
    let _done_P=(${_progress_P}*4)/10
    let _left_P=40-$_done_P
# Build progressbar string lengths
    _fill_P=$(printf "%${_done_P}s")
    _empty_P=$(printf "%${_left_P}s")

# 1.2 Build progressbar strings and print the ProgressBar line
# 1.2.1 Output example:                           
# 1.2.1.1 Progress : [########################################] 100%
printf "\rProgress : [${PURPLE}${_fill_P// /\#}${COLORLESS}${_empty_P// /-}] ${_progress_P}%%"
}
