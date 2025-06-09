.PHONY: blobs/blobcat blobs/blobcat.clean

blobs/blobcat: \
  blobs/blobcat/meta.json \
  blobs/blobcat/ablobcatcyclone.png \
  blobs/blobcat/blobcatowo.png

blobs/blobcat.clean:
	-rm -rf blobs/blobcat/
	-rm blobs/.blobcat.pre

blobs/.blobcat.pre: .blobs.pre
	-mkdir -p blobs/blobcat && \
	touch blobs/.blobcat.pre

blobs/blobcat/meta.json: blobs/.blobcat.pre ../blobs/blobcat/meta.json
	.script/build_metadata.sh ../blobs/blobcat/meta.json > blobs/blobcat/meta.json

blobs/blobcat/%.png:: ../blobs/blobcat/%.svg blobs/.blobcat.pre
	resvg -z 4 --dpi 384 "$<" "$@"
	optipng -q --fix "$@"

blobs/blobcat/%.png:: ../blobs/blobcat/%.png blobs/.blobcat.pre
	optipng -q --fix "$<" -out "$@"
