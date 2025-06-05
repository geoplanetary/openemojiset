.PHONY: blobs/cat_is_blob blobs/cat_is_blob.clean

blobs/cat_is_blob: \
  blobs/cat_is_blob/meta.json \
  blobs/cat_is_blob/cat_is_blob_and_ace.gif \
  blobs/cat_is_blob/cat_is_blob_and_agender.gif \
  blobs/cat_is_blob/cat_is_blob_and_ancom.gif \
  blobs/cat_is_blob/cat_is_blob_and_angry.gif \
  blobs/cat_is_blob/cat_is_blob_and_aro.gif \
  blobs/cat_is_blob/cat_is_blob_and_bi.gif \
  blobs/cat_is_blob/cat_is_blob_and_bigender.gif \
  blobs/cat_is_blob/cat_is_blob_and_demiace.gif \
  blobs/cat_is_blob/cat_is_blob_and_demiaro.gif \
  blobs/cat_is_blob/cat_is_blob_and_demienby.gif \
  blobs/cat_is_blob/cat_is_blob_and_demiflux.gif \
  blobs/cat_is_blob/cat_is_blob_and_demigirl.gif \
  blobs/cat_is_blob/cat_is_blob_and_demiguy.gif \
  blobs/cat_is_blob/cat_is_blob_and_demilesbian_and_has_mug.gif \
  blobs/cat_is_blob/cat_is_blob_and_demilesbian_and_melt.gif \
  blobs/cat_is_blob/cat_is_blob_and_demilesbian_and_sad.gif \
  blobs/cat_is_blob/cat_is_blob_and_demilesbian.gif \
  blobs/cat_is_blob/cat_is_blob_and_disabled.gif \
  blobs/cat_is_blob/cat_is_blob_and_enby.gif \
  blobs/cat_is_blob/cat_is_blob_and_gay.gif \
  blobs/cat_is_blob/cat_is_blob_and_has_brick.gif \
  blobs/cat_is_blob/cat_is_blob_and_has_cat.gif \
  blobs/cat_is_blob/cat_is_blob_and_has_gun.gif \
  blobs/cat_is_blob/cat_is_blob_and_has_hammer.gif \
  blobs/cat_is_blob/cat_is_blob_and_has_knife.gif \
  blobs/cat_is_blob/cat_is_blob_and_has_mug.gif \
  blobs/cat_is_blob/cat_is_blob_and_has_stick.gif \
  blobs/cat_is_blob/cat_is_blob_and_has_tnt.gif \
  blobs/cat_is_blob/cat_is_blob_and_intersex.gif \
  blobs/cat_is_blob/cat_is_blob_and_lesbian.gif \
  blobs/cat_is_blob/cat_is_blob_and_melt.gif \
  blobs/cat_is_blob/cat_is_blob_and_pan.gif \
  blobs/cat_is_blob/cat_is_blob_and_plural.gif \
  blobs/cat_is_blob/cat_is_blob_and_polyam.gif \
  blobs/cat_is_blob/cat_is_blob_and_pride.gif \
  blobs/cat_is_blob/cat_is_blob_and_sad.gif \
  blobs/cat_is_blob/cat_is_blob_and_trans.gif \
  blobs/cat_is_blob/cat_is_blob.gif \
  blobs/cat_is_blob/cat_is_blob.gif

blobs/cat_is_blob.clean:
	-rm -rf blobs/cat_is_blob/
	-rm blobs/.cat_is_blob.pre

blobs/.cat_is_blob.pre: .blobs.pre
	-mkdir -p blobs/cat_is_blob && \
	touch blobs/.cat_is_blob.pre

blobs/cat_is_blob/meta.json: ../blobs/cat_is_blob/meta.json blobs/.cat_is_blob.pre
	.script/build_metadata.sh ../blobs/cat_is_blob/meta.json > blobs/cat_is_blob/meta.json

blobs/cat_is_blob/%.gif: ../submodules/cat-is-blob/%.gif blobs/.cat_is_blob.pre
	cp $< $@
