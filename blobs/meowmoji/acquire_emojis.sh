#! /bin/bash

relocation() {
	while read -rd $'\0' pattern; do
		mv "$(jq -r '.source' <<<"$pattern")" "$(jq -r '.destination' <<<"$pattern")"
	done < <(jq --raw-output0 '.[]|tojson')
}

(
	cd "$(dirname "$0")" || exit
	catalogue="$(curl https://api.mousey.app/v3/emoji/blobs+community-blobs)" || exit
	jq -r --unbuffered '.["community-blobs"]|(.["341652355734962189"].emoji + .["380068244536557570"].emoji + .["411236082500501525"].emoji + .["463770016760725504"].emoji + .["417754471670743053"].emoji + .["519174567156252682"].emoji)|.[]|"https://cdn.discordapp.com/emojis/\(.id).\(if .animated then "gif" else "png" end)"' <<<"$catalogue" | wget -nv -nc -i -
	jq -c '.["community-blobs"]|(.["341652355734962189"].emoji + .["380068244536557570"].emoji + .["411236082500501525"].emoji + .["463770016760725504"].emoji + .["417754471670743053"].emoji + .["519174567156252682"].emoji)|map({source:"\(.id).\(if .animated then "gif" else "png" end)",destination:"\(.name).\(if .animated then "gif" else "png" end)"})' <<<"$catalogue" | relocation
	jq --tab -f <(cat <<<'.["community-blobs"]|((.["341652355734962189"].emoji|map(.+{category:"Blobs/Meowmoji/1"}))+(.["380068244536557570"].emoji|map(.+{category:"Blobs/Meowmoji/2"}))+(.["411236082500501525"].emoji|map(.+{category:"Blobs/Meowmoji/3"}))+(.["463770016760725504"].emoji|map(.+{category:"Blobs/Meowmoji/4"}))+(.["417754471670743053"].emoji|map(.+{category:"Blobs/Meowmoji/Signs"}))+(.["519174567156252682"].emoji|map(.+{category:"Blobs/Meowmoji/Puffy"})))|map({name:.name,category:.category,type:(if .animated then "image/gif" else "image/png" end),aliases:[],license:"Apache License 2.0 (https://www.apache.org/licenses/LICENSE-2.0.html), Copyright 2013 Blob emoji(Google Inc. & Arjen Nienhuis). see https://blobs.gg/",localOnly:false,isSensitive:false})') <<<"$catalogue" >"meta.json"
)
