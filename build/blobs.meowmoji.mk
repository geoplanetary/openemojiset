.PHONY: blobs/meowmoji blobs/meowmoji.clean

blobs/meowmoji: blobs/meowmoji/meta.json blobs/.meowmoji

blobs/meowmoji.clean:
	-rm -rf blobs/meowmoji/
	-rm blobs/.meowmoji.pre blobs/.meowmoji

blobs/.meowmoji.pre: .blobs.pre
	-mkdir -p blobs/meowmoji && \
	touch blobs/.meowmoji.pre

blobs/.meowmoji: blobs/.meowmoji.pre blobs/catalogue.json
	cd blobs/meowmoji && jq -r --unbuffered '.["community-blobs"]|(.["341652355734962189"].emoji + .["380068244536557570"].emoji + .["411236082500501525"].emoji + .["463770016760725504"].emoji + .["417754471670743053"].emoji + .["519174567156252682"].emoji)|.[]|"https://cdn.discordapp.com/emojis/\(.id).\(if .animated then "gif" else "png" end)"' ../catalogue.json | wget -nv -N -i -
	jq -c '.["community-blobs"]|(.["341652355734962189"].emoji + .["380068244536557570"].emoji + .["411236082500501525"].emoji + .["463770016760725504"].emoji + .["417754471670743053"].emoji + .["519174567156252682"].emoji)|map({source:"blobs/meowmoji/\(.id).\(if .animated then "gif" else "png" end)",destination:"blobs/meowmoji/\(.name).\(if .animated then "gif" else "png" end)"})' blobs/catalogue.json | .script/relocation.sh
	touch blobs/.meowmoji

blobs/meowmoji/meta.json: blobs/.meowmoji.pre blobs/catalogue.json
	jq -c '.["community-blobs"]|((.["341652355734962189"].emoji|map(.+{category:"Blobs/Meowmoji/1"}))+(.["380068244536557570"].emoji|map(.+{category:"Blobs/Meowmoji/2"}))+(.["411236082500501525"].emoji|map(.+{category:"Blobs/Meowmoji/3"}))+(.["463770016760725504"].emoji|map(.+{category:"Blobs/Meowmoji/4"}))+(.["417754471670743053"].emoji|map(.+{category:"Blobs/Meowmoji/Signs"}))+(.["519174567156252682"].emoji|map(.+{category:"Blobs/Meowmoji/Puffy"})))|{metaVersion:2,emojis:map({filename:(.name+"."+if .animated then "gif" else "png" end),downloaded:true,emoji:({host:null,name:.name,category:.category,type:(if .animated then "image/gif" else "image/png" end),aliases:[],license:"Apache License 2.0 (https://www.apache.org/licenses/LICENSE-2.0.html), Copyright Meowmoji community, 2013 Blob emoji(Google Inc. & Arjen Nienhuis). see https://blobs.gg/",localOnly:false,isSensitive:false})})}' blobs/catalogue.json > blobs/meowmoji/meta.json
