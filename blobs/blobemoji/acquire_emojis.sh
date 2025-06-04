#! /bin/bash

(
	cd "$(dirname "$0")" || exit
	catalogue="$(curl https://api.mousey.app/v3/emoji/blobs+community-blobs)" || exit
	wget https://files.lostluma.dev/blobs.zip || exit
	unzip -o blobs.zip && rm blobs.zip || exit
	jq --tab -f <(cat <<<'.["blobs"]|((.["272885620769161216"].emoji|map(.+{category:"Blobs/BlobEmoji/1.BlobEmoji"}))+(.["356869031870988309"].emoji|map(.+{category:"Blobs/BlobEmoji/2.GoogleBlobs"}))+(.["356876866952364032"].emoji|map(.+{category:"Blobs/BlobEmoji/3.Emotions"}))+(.["356876897403011072"].emoji|map(.+{category:"Blobs/BlobEmoji/4.Actions"}))+(.["396144014128054275"].emoji|map(.+{category:"Blobs/BlobEmoji/5.Characters"}))+(.["494946907181809667"].emoji|map(.+{category:"Blobs/BlobEmoji/6.Google+Animals"})))|map({name:.name,category:.category,type:(if .animated then "image/gif" else "image/png" end),aliases:[],license:"Apache License 2.0 (https://www.apache.org/licenses/LICENSE-2.0.html), Copyright 2013 Blob emoji(Google Inc. & Arjen Nienhuis). see https://blobs.gg/",localOnly:false,isSensitive:false})') <<<"$catalogue" >"meta.json"
)
