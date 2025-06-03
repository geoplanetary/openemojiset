.PHONY: blobs/blobbluebird blobs/blobbluebird.clean

blobs/blobbluebird: blobs/blobbluebird/meta.json blobs/blobbluebird/blobbluebird.webp blobs/blobbluebird/blobbluebirdbandaid.webp blobs/blobbluebird/blobbluebirdcry.webp blobs/blobbluebird/blobbluebirdtear.webp blobs/blobbluebird/blobbluebirdtravelling.webp blobs/blobbluebird/blobbluebirduwu.webp blobs/blobbluebird/blobbluebirdverified.webp

blobs/blobbluebird.clean:
	-rm -rf blobs/blobbluebird/
	-rm blobs/.blobbluebird.pre

blobs/.blobbluebird.pre: .blobs.pre
	-mkdir -p blobs/blobbluebird && \
	touch blobs/.blobbluebird.pre

blobs/blobbluebird/meta.json: blobs/.blobbluebird.pre ../blobs/blobbluebird/meta.json
	.script/build_metadata.sh ../blobs/blobbluebird/meta.json > blobs/blobbluebird/meta.json

blobs/blobbluebird/blobbluebird.webp: blobs/.blobbluebird.pre ../blobs/blobbluebird/blobbluebird.webp
	cp ../blobs/blobbluebird/blobbluebird.webp blobs/blobbluebird/blobbluebird.webp

blobs/blobbluebird/blobbluebirdbandaid.webp: blobs/.blobbluebird.pre ../blobs/blobbluebird/blobbluebirdbandaid.webp
	cp ../blobs/blobbluebird/blobbluebirdbandaid.webp blobs/blobbluebird/blobbluebirdbandaid.webp

blobs/blobbluebird/blobbluebirdcry.webp: blobs/.blobbluebird.pre ../blobs/blobbluebird/blobbluebirdcry.webp
	cp ../blobs/blobbluebird/blobbluebirdcry.webp blobs/blobbluebird/blobbluebirdcry.webp

blobs/blobbluebird/blobbluebirdtear.webp: blobs/.blobbluebird.pre ../blobs/blobbluebird/blobbluebirdtear.webp
	cp ../blobs/blobbluebird/blobbluebirdtear.webp blobs/blobbluebird/blobbluebirdtear.webp

blobs/blobbluebird/blobbluebirdtravelling.webp: blobs/.blobbluebird.pre ../blobs/blobbluebird/blobbluebirdtravelling.webp
	cp ../blobs/blobbluebird/blobbluebirdtravelling.webp blobs/blobbluebird/blobbluebirdtravelling.webp

blobs/blobbluebird/blobbluebirduwu.webp: blobs/.blobbluebird.pre ../blobs/blobbluebird/blobbluebirduwu.webp
	cp ../blobs/blobbluebird/blobbluebirduwu.webp blobs/blobbluebird/blobbluebirduwu.webp

blobs/blobbluebird/blobbluebirdverified.webp: blobs/.blobbluebird.pre ../blobs/blobbluebird/blobbluebirdverified.webp
	cp ../blobs/blobbluebird/blobbluebirdverified.webp blobs/blobbluebird/blobbluebirdverified.webp
