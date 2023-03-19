#!/bin/bash

TARGET_DIR="/gaming/lutris/winesteam/prefix64/drive_c/Program Files (x86)/Steam/steamapps/common/Fallout 3 goty/Data";
#TARGET_DIR=".";

#create array
aryLDirPathsList=(  );

cd "${TARGET_DIR}";

#fast check first
ALL_DIRS_COUNT=$(find . -mindepth 1 -type d|wc -l);
UNIQUE_LDIRS_COUNT=$(find . -mindepth 1 -type d|tr '[:upper:]' '[:lower:]'|sort -u|wc -l);
echo "===================================================";
echo "ALL_DIRS_COUNT: $ALL_DIRS_COUNT"
echo "UNIQUE_LDIRS_COUNT: $UNIQUE_LDIRS_COUNT"
if [[ "$ALL_DIRS_COUNT" == "$UNIQUE_LDIRS_COUNT" ]]; then
	echo "No overlapping folders!";
	exit;
fi

#loop through find output
echo "===================================================";
find . -mindepth 1 -type d | while read dirpath
do
	#echo "---------------------------";
	#echo "dirpath: '$dirpath'";

	#echo "aryLDirPathsList size: ${#aryLDirPathsList[@]}";
	if [[ "0" == "${#aryLDirPathsList[@]}" ]]; then
		aryLDirPathsList+=("${ldirpath}");
	else
		already_exists='false';
		ldirpath=$(echo "$dirpath" | tr '[:upper:]' '[:lower:]');
		#echo "ldirpath: '$ldirpath'";
		#echo "aryLDirPathsList: ${aryLDirPathsList[*]}"
		for ldir in "${aryLDirPathsList[@]}"; do
			if [[ "${ldirpath}" == "${ldir}" ]]; then
				already_exists='true';
				echo "Found overlapping paths for: ${dirpath}";
				break;
			fi
		done
		if [[ 'false' == "${already_exists}" ]]; then
			aryLDirPathsList+=("${ldirpath}");
		fi
	fi
done
echo "===================================================";
