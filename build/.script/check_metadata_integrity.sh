#! /bin/bash

(
	cd "$(dirname "$0")/../emojis" || exit
	printf "Checking metadata integrity...\n"
	declare -i health=0
	while read -r i
	do
		[ -e "$i" ] || { printf "%s notfound\n" "$i"; health=1; }
	done  < <(jq -r '.emojis[]|.filename' meta.json)
	printf "done.\n"
	[ $health -eq 0 ]
)
