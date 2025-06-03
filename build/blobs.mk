.PHONY: blobs blobs.clean

blobs: blobs/blobbluebird blobs/blobcat

blobs.clean: blobs/blobbluebird.clean blobs/blobcat.clean
	-rm -rf blobs/
	-rm .blobs.pre

.blobs.pre:
	-mkdir -p blobs && \
	touch .blobs.pre

include blobs.blobbluebird.mk
include blobs.blobcat.mk
