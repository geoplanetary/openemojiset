.PHONY: blobs/blobemoji blobs/blobemoji.clean

blobs/blobemoji: blobs/blobemoji/meta.json blobs/.blobemoji

blobs/blobemoji.clean:
	-rm -rf blobs/blobemoji/
	-rm blobs/.blobemoji.pre blobs/.blobemoji

blobs/.blobemoji.pre: .blobs.pre
	-mkdir -p blobs/blobemoji && \
	touch blobs/.blobemoji.pre

blobs/.blobemoji: blobs/.blobemoji.pre blobs/catalogue.json
	cd blobs/blobemoji && jq -r --unbuffered '.["blobs"]|(.["272885620769161216"].emoji + .["356869031870988309"].emoji + .["356876866952364032"].emoji + .["356876897403011072"].emoji + .["396144014128054275"].emoji + .["494946907181809667"].emoji)|.[]|"https://cdn.discordapp.com/emojis/\(.id).\(if .animated then "gif" else "png" end)"' ../catalogue.json | wget -nv -N -i -
	jq -c '.["blobs"]|(.["272885620769161216"].emoji + .["356869031870988309"].emoji + .["356876866952364032"].emoji + .["356876897403011072"].emoji + .["396144014128054275"].emoji + .["494946907181809667"].emoji)|map({source:"blobs/blobemoji/\(.id).\(if .animated then "gif" else "png" end)",destination:"blobs/blobemoji/\(.name).\(if .animated then "gif" else "png" end)"})' blobs/catalogue.json | .script/relocation.sh
	touch blobs/.blobemoji

blobs/blobemoji/meta.json: blobs/.blobemoji.pre blobs/catalogue.json
	jq -c '.["blobs"]|((.["272885620769161216"].emoji|map(.+{category:"Blobs/BlobEmoji/1.BlobEmoji"}))+(.["356869031870988309"].emoji|map(.+{category:"Blobs/BlobEmoji/2.GoogleBlobs"}))+(.["356876866952364032"].emoji|map(.+{category:"Blobs/BlobEmoji/3.Emotions"}))+(.["356876897403011072"].emoji|map(.+{category:"Blobs/BlobEmoji/4.Actions"}))+(.["396144014128054275"].emoji|map(.+{category:"Blobs/BlobEmoji/5.Characters"}))+(.["494946907181809667"].emoji|map(.+{category:"Blobs/BlobEmoji/6.Google+Animals"})))|{metaVersion:2,emojis:map({filename:(.name+"."+if .animated then "gif" else "png" end),downloaded:true,emoji:({host:null,name:.name,category:.category,type:(if .animated then "image/gif" else "image/png" end),aliases:[],license:"Apache License 2.0 (https://www.apache.org/licenses/LICENSE-2.0.html), Copyright 2013 Blob emoji(Google Inc. & Arjen Nienhuis). see https://blobs.gg/",localOnly:false,isSensitive:false})})}' blobs/catalogue.json > blobs/blobemoji/meta.json
