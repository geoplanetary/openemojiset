.PHONY: blobs blobs.clean

blobs: blobs/blobbluebird blobs/blobemoji blobs/blobcat blobs/blobfox blobs/meowmoji

blobs.clean: blobs/blobbluebird.clean blobs/blobemoji.clean blobs/blobcat.clean blobs/blobfox.clean blobs/meowmoji.clean
	-rm -rf blobs/
	-rm .blobs.pre

.blobs.pre:
	-mkdir -p blobs && \
	touch .blobs.pre

blobs/catalogue.json: .blobs.pre
	curl https://api.mousey.app/v3/emoji/blobs+community-blobs > blobs/catalogue.json

include blobs.blobbluebird.mk
include blobs.blobemoji.mk
include blobs.blobcat.mk
include blobs.blobfox.mk
include blobs.meowmoji.mk
