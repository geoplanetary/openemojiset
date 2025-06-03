.PHONY: blobs blobs.clean

blobs: blobs/blobbluebird

blobs.clean: blobs/blobbluebird.clean
	-rm -rf blobs/
	-rm .blobs.pre

.blobs.pre:
	-mkdir -p blobs && \
	touch .blobs.pre

include blobs.blobbluebird.mk
