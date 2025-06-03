.PHONY: blobs/blobcat blobs/blobcat.clean

blobs/blobcat: blobs/blobcat/meta.json blobs/blobcat/blobcat.png

blobs/blobcat.clean:
	-rm -rf blobs/blobcat/
	-rm blobs/.blobcat.pre

blobs/.blobcat.pre: .blobs.pre
	-mkdir -p blobs/blobcat && \
	touch blobs/.blobcat.pre

blobs/blobcat/meta.json: blobs/.blobcat.pre ../blobs/blobcat/meta.json
	.script/build_metadata.sh ../blobs/blobcat/meta.json > blobs/blobcat/meta.json

blobs/blobcat/blobcat.png: blobs/.blobcat.pre ../blobs/blobcat/blobcat.svg
	resvg -z 4 --dpi 384 ../blobs/blobcat/blobcat.svg blobs/blobcat/blobcat.png && optipng -q blobs/blobcat/blobcat.png
