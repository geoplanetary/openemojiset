.PHONY: blobs/blobbluebird blobs/blobbluebird.clean

blobs/blobbluebird: \
  blobs/blobbluebird/meta.json \
  blobs/blobbluebird/blobbluebird.webp \
  blobs/blobbluebird/blobbluebirdbandaid.webp \
  blobs/blobbluebird/blobbluebirdcry.webp \
  blobs/blobbluebird/blobbluebirdtear.webp \
  blobs/blobbluebird/blobbluebirdtravelling.webp \
  blobs/blobbluebird/blobbluebirduwu.webp \
  blobs/blobbluebird/blobbluebirdverified.webp

blobs/blobbluebird.clean:
	-rm -rf blobs/blobbluebird/
	-rm blobs/.blobbluebird.pre

blobs/.blobbluebird.pre: .blobs.pre
	mkdir -p blobs/blobbluebird
	touch blobs/.blobbluebird.pre

blobs/blobbluebird/meta.json: blobs/.blobbluebird.pre ../blobs/blobbluebird/meta.json
	.script/build_metadata.sh ../blobs/blobbluebird/meta.json > blobs/blobbluebird/meta.json

blobs/blobbluebird/%.webp: ../blobs/blobbluebird/%.webp blobs/.blobbluebird.pre
	cp "$<" "$@"
