.PHONY: blobs blobs.clean

blobs: blobs/blobbluebird blobs/blobemoji blobs/blobcat blobs/blobfox blobs/cat_is_blob blobs/meowmoji blobs/queercats

blobs.clean: blobs/blobbluebird.clean blobs/blobemoji.clean blobs/blobcat.clean blobs/blobfox.clean blobs/cat_is_blob.clean blobs/meowmoji.clean blobs/queercats.clean
	-rm -rf blobs/
	-rm .blobs.pre

.blobs.pre:
	-mkdir -p blobs && \
	touch .blobs.pre

include blobs.blobbluebird.mk
include blobs.blobemoji.mk
include blobs.blobcat.mk
include blobs.blobfox.mk
include blobs.cat_is_blob.mk
include blobs.meowmoji.mk
include blobs.queercats.mk
