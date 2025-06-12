# Blobs

blobs: blobs/blobbluebird blobs/blobcat blobs/blobemoji blobs/blobfox blobs/cat_is_blob blobs/meowmoji blobs/queercats

.blobs.pre:
	mkdir -p blobs
	touch .blobs.pre

blobs.clean: blobs/blobbluebird.clean blobs/blobemoji.clean blobs/blobcat.clean blobs/blobfox.clean blobs/cat_is_blob.clean blobs/meowmoji.clean blobs/queercats.clean
	-rm -rf blobs/
	-rm .blobs.pre

## BlobBluebird
blobs/blobbluebird: blobs.blobbluebird.zip

blobs/.blobbluebird.pre: .blobs.pre
	mkdir -p "blobs/blobbluebird"
	touch "blobs/.blobbluebird.pre"

blobs/blobbluebird.clean:
	-rm -rf "blobs/blobbluebird/"
	-rm "blobs.blobbluebird.zip"
	-rm "blobs/.blobbluebird.pre"

blobs/blobbluebird.meta= blobs/blobbluebird/meta.json

blobs/blobbluebird.meta: $(blobs/blobbluebird.meta)

blobs/blobbluebird.assets= \
  blobs/blobbluebird/blobbluebird.webp \
  blobs/blobbluebird/blobbluebirdbandaid.webp \
  blobs/blobbluebird/blobbluebirdcry.webp \
  blobs/blobbluebird/blobbluebirdtear.webp \
  blobs/blobbluebird/blobbluebirdtravelling.webp \
  blobs/blobbluebird/blobbluebirduwu.webp \
  blobs/blobbluebird/blobbluebirdverified.webp

blobs/blobbluebird.assets: $(blobs/blobbluebird.assets)

blobs/blobbluebird.check: $(blobs/blobbluebird.meta) $(blobs/blobbluebird.assets)
	.script/check_metadata_integrity.sh blobs/blobbluebird

blobs.blobbluebird.zip: $(blobs/blobbluebird.meta) $(blobs/blobbluebird.assets)
	cd blobs/blobbluebird && zip ../../blobs.blobbluebird.zip meta.json ./*.webp

blobs/blobbluebird/%.webp: ../blobs/blobbluebird/%.webp blobs/.blobbluebird.pre
	cp "$<" "$@"


# Blobcat
blobs/blobcat: blobs.blobcat.zip

blobs/.blobcat.pre: .blobs.pre
	mkdir -p "blobs/blobcat"
	touch "blobs/.blobcat.pre"

blobs/blobcat.clean:
	-rm -rf "blobs/blobcat/"
	-rm "blobs.blobcat.zip"
	-rm "blobs/.blobcat.pre"

blobs/blobcat.meta= blobs/blobcat/meta.json

blobs/blobcat.meta: $(blobs/blobcat.meta)

blobs/blobcat.assets= \
  blobs/blobcat/ablobcatcyclone.png \
  blobs/blobcat/blobcatowo.png

blobs/blobcat.assets: $(blobs/blobcat.assets)

blobs/blobcat.check: $(blobs/blobcat.meta) $(blobs/blobcat.assets)
	.script/check_metadata_integrity.sh blobs/blobcat

blobs.blobcat.zip: $(blobs/blobcat.meta) $(blobs/blobcat.assets)
	cd blobs/blobcat && zip ../../blobs.blobcat.zip meta.json ./*.png

blobs/blobcat/%.png:: ../blobs/blobcat/%.svg blobs/.blobcat.pre
	resvg -z 4 --dpi 384 "$<" "$@"
	optipng -q --fix "$@"

blobs/blobcat/%.png:: ../blobs/blobcat/%.png blobs/.blobcat.pre
	optipng -q --fix "$<" -out "$@"


# Blob Emoji
blobs/blobemoji: blobs.blobemoji.zip

blobs/.blobemoji.pre: .blobs.pre
	mkdir -p "blobs/blobemoji"
	touch "blobs/.blobemoji.pre"

blobs/blobemoji.clean:
	-rm -rf "blobs/blobemoji/"
	-rm "blobs.blobemoji.zip"
	-rm "blobs/.blobemoji.pre"

blobs/blobemoji.meta= blobs/blobemoji/meta.json

blobs/blobemoji.meta: $(blobs/blobemoji.meta)

blobs/blobemoji.assets= \
  blobs/blobemoji/blobgoodnightreverse.png \
  blobs/blobemoji/blobgoodmorningreverse.png \
  blobs/blobemoji/blobgoodmorning.png \
  blobs/blobemoji/blobowo2.png \
  blobs/blobemoji/blobcouple.png \
  blobs/blobemoji/blobokhand.png \
  blobs/blobemoji/blobrageangry.png \
  blobs/blobemoji/blobconcerned.png \
  blobs/blobemoji/ablobsad.gif \
  blobs/blobemoji/ablobenjoyrain.gif \
  blobs/blobemoji/ablobsunglasses.gif \
  blobs/blobemoji/ablobtonguewink.gif \
  blobs/blobemoji/ablobsigh.gif \
  blobs/blobemoji/ablobwink.gif \
  blobs/blobemoji/ablobgrin.gif \
  blobs/blobemoji/ablobsmile.gif \
  blobs/blobemoji/ablobnervous.gif \
  blobs/blobemoji/ablobangel.gif \
  blobs/blobemoji/ablobnogood.gif \
  blobs/blobemoji/ablobrollingeyes.gif \
  blobs/blobemoji/ablobsweating.gif \
  blobs/blobemoji/ablobscream.gif \
  blobs/blobemoji/ablobgrimace.gif \
  blobs/blobemoji/ablobunamused.gif \
  blobs/blobemoji/ablobcry.gif \
  blobs/blobemoji/ablobdizzy.gif \
  blobs/blobemoji/ablobsleep.gif \
  blobs/blobemoji/ablobweary.gif \
  blobs/blobemoji/ablobflushed.gif \
  blobs/blobemoji/ablobwoahsnow.gif \
  blobs/blobemoji/ablobwoah.gif \
  blobs/blobemoji/ablobhungry.gif \
  blobs/blobemoji/ablobmaracas.gif \
  blobs/blobemoji/ablobsplosion.gif \
  blobs/blobemoji/ablobraisehand.gif \
  blobs/blobemoji/ablobdancer.gif \
  blobs/blobemoji/ablobonfire.gif \
  blobs/blobemoji/ablobblastoff.gif \
  blobs/blobemoji/ajakeblob.gif \
  blobs/blobemoji/ablobgift.gif \
  blobs/blobemoji/ablobjoin.gif \
  blobs/blobemoji/ablobleave.gif \
  blobs/blobemoji/ablobcouncil.gif \
  blobs/blobemoji/ablobcolorshift.gif \
  blobs/blobemoji/ablobhydraulicpress.gif \
  blobs/blobemoji/agooglethumbsup.gif \
  blobs/blobemoji/agooglecat.gif \
  blobs/blobemoji/agooglecake.gif \
  blobs/blobemoji/agooglethumbsdown.gif \
  blobs/blobemoji/ablobmelting.gif \
  blobs/blobemoji/ablobwobroll.gif \
  blobs/blobemoji/blob0w0.png \
  blobs/blobemoji/ablobwobwork.gif \
  blobs/blobemoji/ablobsleepy.gif \
  blobs/blobemoji/blobnomcookie.png \
  blobs/blobemoji/ablobnomcookie.gif \
  blobs/blobemoji/ablobpropeller.gif \
  blobs/blobemoji/ablobenjoy.gif \
  blobs/blobemoji/ablobbonk.gif \
  blobs/blobemoji/ablobnote.gif \
  blobs/blobemoji/ablobnervous2.gif \
  blobs/blobemoji/ablobreachsob.gif \
  blobs/blobemoji/ablobsaxophone.gif \
  blobs/blobemoji/ablobwavesob.gif \
  blobs/blobemoji/ablobenjoysnow.gif \
  blobs/blobemoji/ablobstare.gif \
  blobs/blobemoji/blobcocoa.png \
  blobs/blobemoji/blobthinkingeyes.png \
  blobs/blobemoji/ablobthinkingeyes.gif \
  blobs/blobemoji/blobnight.png \
  blobs/blobemoji/blobmorning.png \
  blobs/blobemoji/agooglehearts.gif \
  blobs/blobemoji/ablobderpytrap.gif \
  blobs/blobemoji/blobderpytrap.png \
  blobs/blobemoji/blobpartlysunny.png \
  blobs/blobemoji/blobthinkingglare.png \
  blobs/blobemoji/ablobparty.gif \
  blobs/blobemoji/blobparty.png \
  blobs/blobemoji/blobsmiletear.png \
  blobs/blobemoji/ablobbass.gif \
  blobs/blobemoji/ablobdrum.gif \
  blobs/blobemoji/ablobguitar.gif \
  blobs/blobemoji/ablobkeyboard.gif \
  blobs/blobemoji/ablobmicrophone.gif \
  blobs/blobemoji/ablobpeek.gif \
  blobs/blobemoji/blobomo.png \
  blobs/blobemoji/blobangry2.png \
  blobs/blobemoji/blobono.png \
  blobs/blobemoji/blobovo.png \
  blobs/blobemoji/ablobeyesdown.gif \
  blobs/blobemoji/ablobeyesup.gif \
  blobs/blobemoji/blobbathtub.png \
  blobs/blobemoji/ablobheadshake.gif \
  blobs/blobemoji/ablobgoodnightreverse.gif \
  blobs/blobemoji/ablobgoodnight.gif \
  blobs/blobemoji/ablobdrool.gif \
  blobs/blobemoji/ablobblewobble.gif \
  blobs/blobemoji/ablobwob.gif \
  blobs/blobemoji/blobunamused.png \
  blobs/blobemoji/adontfeelsoblob.gif \
  blobs/blobemoji/abongoblob.gif \
  blobs/blobemoji/ablobderpy.gif \
  blobs/blobemoji/ablobderpyhappy.gif \
  blobs/blobemoji/blobbonk.png \
  blobs/blobemoji/ablobmeltsoblove.gif \
  blobs/blobemoji/ablobrage.gif \
  blobs/blobemoji/blobthonkang.png \
  blobs/blobemoji/blobsneezing.png \
  blobs/blobemoji/blobshh.png \
  blobs/blobemoji/blobgiggle.png \
  blobs/blobemoji/blobdrool.png \
  blobs/blobemoji/blobdoubtful.png \
  blobs/blobemoji/blobnerd.png \
  blobs/blobemoji/blobthumbsdown.png \
  blobs/blobemoji/blobhyperthinkfast.png \
  blobs/blobemoji/blobthinkingfast.png \
  blobs/blobemoji/blobwhistle.png \
  blobs/blobemoji/blobsob.png \
  blobs/blobemoji/blobcmereyou.png \
  blobs/blobemoji/blobwaitwhat.png \
  blobs/blobemoji/blobdoubt.png \
  blobs/blobemoji/blobstop.png \
  blobs/blobemoji/blobgo.png \
  blobs/blobemoji/blobsip.png \
  blobs/blobemoji/blobrage.png \
  blobs/blobemoji/blobmeltblush.png \
  blobs/blobemoji/blobooh.png \
  blobs/blobemoji/blobmeltsob.png \
  blobs/blobemoji/blobembarrassed.png \
  blobs/blobemoji/blobderpyhappy.png \
  blobs/blobemoji/blobderpy.png \
  blobs/blobemoji/blobamused.png \
  blobs/blobemoji/blobspy.png \
  blobs/blobemoji/blobwob.png \
  blobs/blobemoji/blobfacepalm.png \
  blobs/blobemoji/blobdead.png \
  blobs/blobemoji/blobwoah.png \
  blobs/blobemoji/blobangery.png \
  blobs/blobemoji/ablobcongarollbounce.gif \
  blobs/blobemoji/ablobnwn.gif \
  blobs/blobemoji/ablobhologram.gif \
  blobs/blobemoji/redtick.png \
  blobs/blobemoji/greentick.png \
  blobs/blobemoji/blobsalute.png \
  blobs/blobemoji/ablobsalute.gif \
  blobs/blobemoji/ablobbanhammer.gif \
  blobs/blobemoji/ablobthinkzerogravity.gif \
  blobs/blobemoji/ablobpopcorn.gif \
  blobs/blobemoji/blobpopcorn.png \
  blobs/blobemoji/blobthinkingdown.png \
  blobs/blobemoji/ablobwavereverse.gif \
  blobs/blobemoji/ablobwave.gif \
  blobs/blobemoji/blobmelt.png \
  blobs/blobemoji/bloblul.png \
  blobs/blobemoji/apartyblob.gif \
  blobs/blobemoji/ablobsweats.gif \
  blobs/blobemoji/ablobhype.gif \
  blobs/blobemoji/ablobowo.gif \
  blobs/blobemoji/ablobglarezoombutfast.gif \
  blobs/blobemoji/blobsnuggle.png \
  blobs/blobemoji/ablobpats.gif \
  blobs/blobemoji/blobpats.png \
  blobs/blobemoji/blobbanhammer.png \
  blobs/blobemoji/photoblob.png \
  blobs/blobemoji/blob.png \
  blobs/blobemoji/blobpolice.png \
  blobs/blobemoji/aphotoblob.gif \
  blobs/blobemoji/blobthinking.png \
  blobs/blobemoji/ablobpanic.gif \
  blobs/blobemoji/awolfiriblob.gif \
  blobs/blobemoji/notlikeblob.png \
  blobs/blobemoji/blobuwu.png \
  blobs/blobemoji/blobthumbsup.png \
  blobs/blobemoji/blobsweats.png \
  blobs/blobemoji/blobowoevil.png \
  blobs/blobemoji/blobowo.png \
  blobs/blobemoji/blobglare.png \
  blobs/blobemoji/blobcheer.png \
  blobs/blobemoji/ablobattentionreverse.gif \
  blobs/blobemoji/ablobattention.gif \
  blobs/blobemoji/ab1nzyblob2.gif \
  blobs/blobemoji/b1nzyblob2.png \
  blobs/blobemoji/ablobsquish.gif \
  blobs/blobemoji/abloblurk.gif \
  blobs/blobemoji/acongablob.gif \
  blobs/blobemoji/ablobthinking.gif \
  blobs/blobemoji/blobheart.png \
  blobs/blobemoji/ablobjoy.gif \
  blobs/blobemoji/bolb.png \
  blobs/blobemoji/blobreach.png \
  blobs/blobemoji/blobreachreverse.png \
  blobs/blobemoji/ablobglarezoom.gif \
  blobs/blobemoji/ablobrollbounce.gif \
  blobs/blobemoji/ablobhearteyes.gif \
  blobs/blobemoji/ablobkiss.gif \
  blobs/blobemoji/ablobcheer.gif \
  blobs/blobemoji/ablobnom.gif \
  blobs/blobemoji/ablobreach.gif \
  blobs/blobemoji/ablobuwu.gif \
  blobs/blobemoji/ablobthinkingfast.gif \
  blobs/blobemoji/thinkingwithblobs.png \
  blobs/blobemoji/ablobreachreverse.gif \
  blobs/blobemoji/blobnom.png \
  blobs/blobemoji/blobsad.png \
  blobs/blobemoji/b1nzyblob.png \
  blobs/blobemoji/blobkissheart.png \
  blobs/blobemoji/b4nzyblob.png \
  blobs/blobemoji/feelsblobman.png \
  blobs/blobemoji/wolfiriblob.png \
  blobs/blobemoji/blobhyperthink.png \
  blobs/blobemoji/blobblush.png \
  blobs/blobemoji/blobinlove.png \
  blobs/blobemoji/blob3cevil.png \
  blobs/blobemoji/blobowosquint.png \
  blobs/blobemoji/ablobshrug.gif \
  blobs/blobemoji/ablobwhistle.gif \
  blobs/blobemoji/blobreachfrown.png \
  blobs/blobemoji/blobangrypuff.png \
  blobs/blobemoji/blobpanic2.png \
  blobs/blobemoji/blobcomfort.png \
  blobs/blobemoji/blobnote.png \
  blobs/blobemoji/ablobplsnospam.gif \
  blobs/blobemoji/blobsweatsweary.png \
  blobs/blobemoji/blobenjoy.png \
  blobs/blobemoji/bloblamp.png \
  blobs/blobemoji/abloblamp.gif \
  blobs/blobemoji/blobmeltsoblove.png \
  blobs/blobemoji/ablobcouple.gif \
  blobs/blobemoji/blobsecret.png \
  blobs/blobemoji/ablobsmilehappy.gif \
  blobs/blobemoji/blobfingerguns.png \
  blobs/blobemoji/blobembarrassed2.png \
  blobs/blobemoji/athinkingwithblobs.gif \
  blobs/blobemoji/blobhug2.png \
  blobs/blobemoji/blobfingerscrossed.png \
  blobs/blobemoji/blob3c.png \
  blobs/blobemoji/blobno.png \
  blobs/blobemoji/blobyes.png \
  blobs/blobemoji/blobpain.png \
  blobs/blobemoji/bloboohcry.png \
  blobs/blobemoji/ablobdundundun.gif \
  blobs/blobemoji/blobstare.png \
  blobs/blobemoji/ablobcaramelldansen.gif \
  blobs/blobemoji/ablobhop.gif \
  blobs/blobemoji/blobsquare.png \
  blobs/blobemoji/blobmousetrap.png \
  blobs/blobemoji/blobhmpf.png \
  blobs/blobemoji/ablobmelt.gif \
  blobs/blobemoji/blob3cuwu.png \
  blobs/blobemoji/blobglareannoyed.png \
  blobs/blobemoji/ablobtoiletflush.gif \
  blobs/blobemoji/blobdizzy2.png \
  blobs/blobemoji/ablobwhee.gif \
  blobs/blobemoji/blobwavesob.png \
  blobs/blobemoji/blobnomnom.png \
  blobs/blobemoji/ablobzerogravity.gif \
  blobs/blobemoji/amegablobsweats.gif \
  blobs/blobemoji/blobconfounded.png \
  blobs/blobemoji/blobaffection.png \
  blobs/blobemoji/ablobsleeping.gif \
  blobs/blobemoji/ablobpainrain.gif \
  blobs/blobemoji/blobconfused.png \
  blobs/blobemoji/ablobnodfast.gif \
  blobs/blobemoji/ablobbouncefast.gif \
  blobs/blobemoji/blobfistshake.png \
  blobs/blobemoji/blobexpressionless.png \
  blobs/blobemoji/blobtrans.png \
  blobs/blobemoji/ablobtrans.gif \
  blobs/blobemoji/arainblob.gif \
  blobs/blobemoji/blobhushed.png \
  blobs/blobemoji/ablobjam.gif \
  blobs/blobemoji/blobpeek.png \
  blobs/blobemoji/blobwoahopenmouth.png \
  blobs/blobemoji/blobsus.png \
  blobs/blobemoji/blobslightsmile.png \
  blobs/blobemoji/ablobglitch.gif \
  blobs/blobemoji/blobgrumpy.png \
  blobs/blobemoji/ablobsurpriseblush.gif \
  blobs/blobemoji/ablobnod.gif \
  blobs/blobemoji/bloberm.png \
  blobs/blobemoji/googleredheart.png \
  blobs/blobemoji/ablobabducted.gif \
  blobs/blobemoji/ablobgiggle.gif \
  blobs/blobemoji/ablobsmooch.gif \
  blobs/blobemoji/ablobanvil.gif \
  blobs/blobemoji/ablobbounce.gif \
  blobs/blobemoji/blobreachfront.png \
  blobs/blobemoji/blobsadrain.png \
  blobs/blobemoji/googlegift.png \
  blobs/blobemoji/googlechristmastree.png \
  blobs/blobemoji/ablobaww.gif \
  blobs/blobemoji/blobaww.png \
  blobs/blobemoji/blobshrug.png \
  blobs/blobemoji/blobwave.png \
  blobs/blobemoji/blobwavereverse.png \
  blobs/blobemoji/ablobsadrain.gif \
  blobs/blobemoji/blobsadpats.png \
  blobs/blobemoji/ablobsadpats.gif \
  blobs/blobemoji/ablobpainpats.gif \
  blobs/blobemoji/blobpainpats.png \
  blobs/blobemoji/blobgoodnight.png \
  blobs/blobemoji/blobsmilehappy.png \
  blobs/blobemoji/blobtongue.png \
  blobs/blobemoji/blobangry.png \
  blobs/blobemoji/blobsmile.png \
  blobs/blobemoji/blobupset.png \
  blobs/blobemoji/blobjoy.png \
  blobs/blobemoji/blobcheeky.png \
  blobs/blobemoji/blobfrowningbig.png \
  blobs/blobemoji/blobfrowning.png \
  blobs/blobemoji/blobfrown.png \
  blobs/blobemoji/blobopenmouth.png \
  blobs/blobemoji/blobnervous.png \
  blobs/blobemoji/blobyum.png \
  blobs/blobemoji/blobcheerful.png \
  blobs/blobemoji/blobrofl.png \
  blobs/blobemoji/blobsmiley.png \
  blobs/blobemoji/blobwink.png \
  blobs/blobemoji/blobupsidedown.png \
  blobs/blobemoji/blobsmilesweat2.png \
  blobs/blobemoji/blobugh.png \
  blobs/blobemoji/blobangel.png \
  blobs/blobemoji/blobtonguewink.png \
  blobs/blobemoji/blobsmilehappyeyes.png \
  blobs/blobemoji/blobgrin.png \
  blobs/blobemoji/blobnogood.png \
  blobs/blobemoji/blobpray.png \
  blobs/blobemoji/blobrollingeyes.png \
  blobs/blobemoji/agoogleturtle.gif \
  blobs/blobemoji/agoogletada.gif \
  blobs/blobemoji/agooglerainbowheart.gif \
  blobs/blobemoji/agoogleclap.gif \
  blobs/blobemoji/agooglebrokenheart.gif \
  blobs/blobemoji/agooglebee.gif \
  blobs/blobemoji/agoogle100.gif \
  blobs/blobemoji/blobneutral.png \
  blobs/blobemoji/blobscream.png \
  blobs/blobemoji/blobgrimace.png \
  blobs/blobemoji/blobtriumph.png \
  blobs/blobemoji/blobpensive.png \
  blobs/blobemoji/blobdetective.png \
  blobs/blobemoji/blobsunglasses.png \
  blobs/blobemoji/blobcool.png \
  blobs/blobemoji/blobok.png \
  blobs/blobemoji/blobsleeping.png \
  blobs/blobemoji/blobsmilesweat.png \
  blobs/blobemoji/ablobpanic2.gif \
  blobs/blobemoji/blobtired.png \
  blobs/blobemoji/blobweary.png \
  blobs/blobemoji/blobvomiting.png \
  blobs/blobemoji/blobdizzy.png \
  blobs/blobemoji/blobhug.png \
  blobs/blobemoji/blobhearteyes.png \
  blobs/blobemoji/blobsmirk.png \
  blobs/blobemoji/blobfearful.png \
  blobs/blobemoji/blobcheerful2.png \
  blobs/blobemoji/blobpanic.png \
  blobs/blobemoji/blobbowing.png \
  blobs/blobemoji/blobcry.png \
  blobs/blobemoji/blobnauseated.png \
  blobs/blobemoji/blobnomouth.png \
  blobs/blobemoji/blobsleepless.png \
  blobs/blobemoji/blobpout.png \
  blobs/blobemoji/blobsurprised.png \
  blobs/blobemoji/blobbandage.png \
  blobs/blobemoji/blobtilt.png \
  blobs/blobemoji/blobzippermouth.png \
  blobs/blobemoji/blobyikes.png \
  blobs/blobemoji/blobnwn.png \
  blobs/blobemoji/bloboverheated.png \
  blobs/blobemoji/blobbroken.png \
  blobs/blobemoji/blobimfine.png \
  blobs/blobemoji/blobfreezing.png \
  blobs/blobemoji/blobreachdrool.png \
  blobs/blobemoji/blobsick.png \
  blobs/blobemoji/blobwoozy.png \
  blobs/blobemoji/blobstarstruck.png \
  blobs/blobemoji/blobxd.png \
  blobs/blobemoji/blobsmirk2.png \
  blobs/blobemoji/blobflushed.png \
  blobs/blobemoji/blobthanks.png \
  blobs/blobemoji/blobpout2.png \
  blobs/blobemoji/blobglarepolice.png \
  blobs/blobemoji/blobfacemask.png \
  blobs/blobemoji/blobnervouspleading.png \
  blobs/blobemoji/blobrelieved.png \
  blobs/blobemoji/blobpensivepray.png \
  blobs/blobemoji/blobbored.png \
  blobs/blobemoji/blobreachsob.png \
  blobs/blobemoji/blobunsure.png \
  blobs/blobemoji/blobmlem.png \
  blobs/blobemoji/ablobtipping.gif \
  blobs/blobemoji/ablobslide.gif \
  blobs/blobemoji/blobnervous2.png \
  blobs/blobemoji/blobnomchocolate.png \
  blobs/blobemoji/ablobbathtub.gif \
  blobs/blobemoji/blobsquee.png \
  blobs/blobemoji/blobnomchristmas.png \
  blobs/blobemoji/blobidea.png \
  blobs/blobemoji/blobpin.png \
  blobs/blobemoji/blobpopsicle.png \
  blobs/blobemoji/blobhuh.png \
  blobs/blobemoji/blobsplosion.png \
  blobs/blobemoji/blobonfire.png \
  blobs/blobemoji/blobthis.png \
  blobs/blobemoji/blobglassesdown.png \
  blobs/blobemoji/blobnostar.png \
  blobs/blobemoji/blobdisapproval.png \
  blobs/blobemoji/blobtorch.png \
  blobs/blobemoji/blobmaracas.png \
  blobs/blobemoji/blobthinksmart.png \
  blobs/blobemoji/blobmoustache.png \
  blobs/blobemoji/blobsobglasses.png \
  blobs/blobemoji/blobworried.png \
  blobs/blobemoji/blobpan.png \
  blobs/blobemoji/blobpleading.png \
  blobs/blobemoji/blobthump.png \
  blobs/blobemoji/blobteefs.png \
  blobs/blobemoji/blobthinkingsmirk.png \
  blobs/blobemoji/blobthinkingcool.png \
  blobs/blobemoji/blobkissblush.png \
  blobs/blobemoji/blobmindblown.png \
  blobs/blobemoji/blobawkward.png \
  blobs/blobemoji/blobyawn.png \
  blobs/blobemoji/blobtriumph2.png \
  blobs/blobemoji/blobnostar2.png \
  blobs/blobemoji/blobhighfive.png \
  blobs/blobemoji/blobdancer.png \
  blobs/blobemoji/blobfistbumpL.png \
  blobs/blobemoji/blobfistbumpR.png \
  blobs/blobemoji/blobkiss.png \
  blobs/blobemoji/blobeyesdown.png \
  blobs/blobemoji/blobeyesup.png \
  blobs/blobemoji/blobpoll.png \
  blobs/blobemoji/blobdisguise.png \
  blobs/blobemoji/nellyblob.png \
  blobs/blobemoji/blobjam.png \
  blobs/blobemoji/blobfirefighter.png \
  blobs/blobemoji/bloboutage.png \
  blobs/blobemoji/blobsanta.png \
  blobs/blobemoji/superblob.png \
  blobs/blobemoji/rickblob.png \
  blobs/blobemoji/blobeagle.png \
  blobs/blobemoji/blobpumpkin.png \
  blobs/blobemoji/blobstudent.png \
  blobs/blobemoji/blobscarf.png \
  blobs/blobemoji/blobaviator.png \
  blobs/blobemoji/blobnomglobal3.png \
  blobs/blobemoji/blobnomglobal2.png \
  blobs/blobemoji/blobnomglobal1.png \
  blobs/blobemoji/blobwooloo.png \
  blobs/blobemoji/blobboost.png \
  blobs/blobemoji/blobnitro.png \
  blobs/blobemoji/blobcamera.png \
  blobs/blobemoji/blobwizard.png \
  blobs/blobemoji/jakeblob.png \
  blobs/blobemoji/wumpusblob.png \
  blobs/blobemoji/blobdoctor.png \
  blobs/blobemoji/bloboro.png \
  blobs/blobemoji/blobgamer.png \
  blobs/blobemoji/blobworker.png \
  blobs/blobemoji/blobpoliceangery.png \
  blobs/blobemoji/blobartist.png \
  blobs/blobemoji/blobspam.png \
  blobs/blobemoji/blobpirate.png \
  blobs/blobemoji/blobdevil.png \
  blobs/blobemoji/pikablob.png \
  blobs/blobemoji/gentleblob.png \
  blobs/blobemoji/blobcowboy.png \
  blobs/blobemoji/blobhero.png \
  blobs/blobemoji/blobcouncil.png \
  blobs/blobemoji/blobbot.png \
  blobs/blobemoji/blobwitch.png \
  blobs/blobemoji/blobmail.png \
  blobs/blobemoji/kirbyblob.png \
  blobs/blobemoji/pusheenblob.png \
  blobs/blobemoji/blobninja.png \
  blobs/blobemoji/blobross.png \
  blobs/blobemoji/nikoblob.png \
  blobs/blobemoji/blobpatrol.png \
  blobs/blobemoji/blobgift.png \
  blobs/blobemoji/ablobdevil.gif \
  blobs/blobemoji/blobdevilsmile.png \
  blobs/blobemoji/blobhypesquad.png \
  blobs/blobemoji/rainblob.png \
  blobs/blobemoji/ablobpumpkin.gif \
  blobs/blobemoji/blobthief.png \
  blobs/blobemoji/googlesnail.png \
  blobs/blobemoji/googledog.png \
  blobs/blobemoji/googlefire.png \
  blobs/blobemoji/googleghost.png \
  blobs/blobemoji/googlepenguin.png \
  blobs/blobemoji/googlesnake.png \
  blobs/blobemoji/googleturtle.png \
  blobs/blobemoji/agoogleoctopus.gif \
  blobs/blobemoji/agooglemonkey.gif \
  blobs/blobemoji/agooglebell.gif \
  blobs/blobemoji/agooglesun.gif \
  blobs/blobemoji/agooglesnail.gif \
  blobs/blobemoji/agooglebomb.gif \
  blobs/blobemoji/agooglepeach.gif \
  blobs/blobemoji/googlegun.png \
  blobs/blobemoji/googlerabbit.png \
  blobs/blobemoji/pandablob.png \
  blobs/blobemoji/googleoctopus.png \
  blobs/blobemoji/googlerat.png \
  blobs/blobemoji/agooglewine.gif \
  blobs/blobemoji/agooglecheers.gif \
  blobs/blobemoji/agooglepoop.gif \
  blobs/blobemoji/googlepanda.png \
  blobs/blobemoji/blobblackcat.png \
  blobs/blobemoji/blobfrog.png \
  blobs/blobemoji/blobnook.png \
  blobs/blobemoji/blobcat.png \
  blobs/blobemoji/doggoblob.png \
  blobs/blobemoji/ferretblob.png \
  blobs/blobemoji/reindeerblob.png \
  blobs/blobemoji/googlecrab.png \
  blobs/blobemoji/googlebee.png \
  blobs/blobemoji/googleduck.png \
  blobs/blobemoji/googlebird.png \
  blobs/blobemoji/googleeagle.png \
  blobs/blobemoji/googlepizza.png \
  blobs/blobemoji/googlelion.png \
  blobs/blobemoji/googlekoala.png \
  blobs/blobemoji/googlesheep.png \
  blobs/blobemoji/googlepig.png \
  blobs/blobemoji/googlegoat.png \
  blobs/blobemoji/googleicecream.png \
  blobs/blobemoji/googledove.png \
  blobs/blobemoji/googlecow.png \
  blobs/blobemoji/googlesquirrel.png \
  blobs/blobemoji/googlechicken.png \
  blobs/blobemoji/googlechick.png \
  blobs/blobemoji/googlebear.png \
  blobs/blobemoji/googlemouse.png \
  blobs/blobemoji/googleblueheart.png \
  blobs/blobemoji/googlecake.png \
  blobs/blobemoji/googlecat.png \
  blobs/blobemoji/googlecatface.png \
  blobs/blobemoji/googlecatheart.png \
  blobs/blobemoji/googlefox.png \
  blobs/blobemoji/googlewhale.png \
  blobs/blobemoji/googlescorpion.png \
  blobs/blobemoji/googlemuscleR.png \
  blobs/blobemoji/googlemuscleL.png \
  blobs/blobemoji/blobgoat.png

blobs/blobemoji.assets: $(blobs/blobemoji.assets)

blobs/blobemoji.check: $(blobs/blobemoji.meta) $(blobs/blobemoji.assets)
	.script/check_metadata_integrity.sh blobs/blobemoji

blobs.blobemoji.zip: $(blobs/blobemoji.meta) $(blobs/blobemoji.assets)
	cd blobs/blobemoji && zip ../../blobs.blobemoji.zip meta.json ./*.png ./*.gif

blobs/blobemoji/%.png: ../blobs/blobemoji/%.png blobs/.blobemoji.pre
	optipng -q --fix "$<" -out "$@"

blobs/blobemoji/%.gif: ../blobs/blobemoji/%.gif blobs/.blobemoji.pre
	cp $< $@


# Blobfox
blobs/blobfox: blobs.blobfox.zip

blobs/.blobfox.pre: .blobs.pre
	mkdir -p "blobs/blobfox"
	touch "blobs/.blobfox.pre"

blobs/blobfox.clean:
	-rm -rf "blobs/blobfox/"
	-rm "blobs.blobfox.zip"
	-rm "blobs/.blobfox.pre"

blobs/blobfox.meta= blobs/blobfox/meta.json

blobs/blobfox.meta: $(blobs/blobfox.meta)

blobs/blobfox.assets= \
  blobs/blobfox/ablobfoxbongo.png \
  blobs/blobfox/ablobfoxbongohyper.png \
  blobs/blobfox/ablobfoxbongoterrified.png \
  blobs/blobfox/ablobfoxdundundun.png \
  blobs/blobfox/ablobfoxdundundunowo.png \
  blobs/blobfox/ablobfoxhyper.png \
  blobs/blobfox/ablobfoxhypercofe.png \
  blobs/blobfox/ablobfoxhyperowo.png \
  blobs/blobfox/ablobfoxhypersnugowo.png \
  blobs/blobfox/ablobfoxhyperthinking.png \
  blobs/blobfox/ablobfoxhyperwhaaaat.png \
  blobs/blobfox/ablobfoxloading.png \
  blobs/blobfox/ablobfoxree.png \
  blobs/blobfox/blobfox.png \
  blobs/blobfox/blobfox0_0.png \
  blobs/blobfox/blobfox3c.png \
  blobs/blobfox/blobfox3cevil.png \
  blobs/blobfox/blobfox_w_.png \
  blobs/blobfox/blobfoxangry.png \
  blobs/blobfox/blobfoxangrylaugh.png \
  blobs/blobfox/blobfoxannoyed.png \
  blobs/blobfox/blobfoxartist.png \
  blobs/blobfox/blobfoxastronout.png \
  blobs/blobfox/blobfoxastronoutgun.png \
  blobs/blobfox/blobfoxaww.png \
  blobs/blobfox/blobfoxblush.png \
  blobs/blobfox/blobfoxblushmore.png \
  blobs/blobfox/blobfoxbongo.png \
  blobs/blobfox/blobfoxbongostart.png \
  blobs/blobfox/blobfoxbongoterrified.png \
  blobs/blobfox/blobfoxbongoterrifiedstart.png \
  blobs/blobfox/blobfoxbonk.png \
  blobs/blobfox/blobfoxboop.png \
  blobs/blobfox/blobfoxboop_w_.png \
  blobs/blobfox/blobfoxboopblush.png \
  blobs/blobfox/blobfoxboopcute.png \
  blobs/blobfox/blobfoxboopfloof.png \
  blobs/blobfox/blobfoxboopglare.png \
  blobs/blobfox/blobfoxboopgoogly.png \
  blobs/blobfox/blobfoxboophappy.png \
  blobs/blobfox/blobfoxboopmelt.png \
  blobs/blobfox/blobfoxboopmelthappy.png \
  blobs/blobfox/blobfoxboopmlem.png \
  blobs/blobfox/blobfoxboopowo.png \
  blobs/blobfox/blobfoxboopterrified.png \
  blobs/blobfox/blobfoxbox.png \
  blobs/blobfox/blobfoxbreadpeek.png \
  blobs/blobfox/blobfoxbreadsnoot.png \
  blobs/blobfox/blobfoxbreadsnoot2.png \
  blobs/blobfox/blobfoxbreadsnoot2googly.png \
  blobs/blobfox/blobfoxbreadsnootgoogly.png \
  blobs/blobfox/blobfoxcactus.png \
  blobs/blobfox/blobfoxcamera.png \
  blobs/blobfox/blobfoxcat.png \
  blobs/blobfox/blobfoxcatsnuggle.png \
  blobs/blobfox/blobfoxcatterrified.png \
  blobs/blobfox/blobfoxcheck.png \
  blobs/blobfox/blobfoxcheer.png \
  blobs/blobfox/blobfoxcofe.png \
  blobs/blobfox/blobfoxcofe_w_.png \
  blobs/blobfox/blobfoxcofecute.png \
  blobs/blobfox/blobfoxcofeglare.png \
  blobs/blobfox/blobfoxcofemlem.png \
  blobs/blobfox/blobfoxcofeowo.png \
  blobs/blobfox/blobfoxcofeterrified.png \
  blobs/blobfox/blobfoxcomfy.png \
  blobs/blobfox/blobfoxcomfycofe.png \
  blobs/blobfox/blobfoxcomfycomputer.png \
  blobs/blobfox/blobfoxcomfyevil.png \
  blobs/blobfox/blobfoxcomfyglare.png \
  blobs/blobfox/blobfoxcomfyhappy.png \
  blobs/blobfox/blobfoxcomfymelt.png \
  blobs/blobfox/blobfoxcomfymelthappy.png \
  blobs/blobfox/blobfoxcomfyowo.png \
  blobs/blobfox/blobfoxcomfysip.png \
  blobs/blobfox/blobfoxcomfysleepy.png \
  blobs/blobfox/blobfoxcomfysmirk.png \
  blobs/blobfox/blobfoxcomfysmug.png \
  blobs/blobfox/blobfoxcomfytea.png \
  blobs/blobfox/blobfoxcomfyterrified.png \
  blobs/blobfox/blobfoxcomputer.png \
  blobs/blobfox/blobfoxcomputerowo.png \
  blobs/blobfox/blobfoxcomputerowonotice.png \
  blobs/blobfox/blobfoxconfused.png \
  blobs/blobfox/blobfoxcookie.png \
  blobs/blobfox/blobfoxcookienomfox.png \
  blobs/blobfox/blobfoxcry.png \
  blobs/blobfox/blobfoxcry2.png \
  blobs/blobfox/blobfoxcrylaugh.png \
  blobs/blobfox/blobfoxcryreach.png \
  blobs/blobfox/blobfoxcursedowo.png \
  blobs/blobfox/blobfoxcute.png \
  blobs/blobfox/blobfoxdab.png \
  blobs/blobfox/blobfoxdarkghost.png \
  blobs/blobfox/blobfoxdarkghostfloof.png \
  blobs/blobfox/blobfoxdarkghostspooky.png \
  blobs/blobfox/blobfoxdead.png \
  blobs/blobfox/blobfoxdeadinside.png \
  blobs/blobfox/blobfoxdealwithit.png \
  blobs/blobfox/blobfoxdealwithitfingerguns.png \
  blobs/blobfox/blobfoxdetective.png \
  blobs/blobfox/blobfoxdetermined.png \
  blobs/blobfox/blobfoxdevil.png \
  blobs/blobfox/blobfoxdisapprove.png \
  blobs/blobfox/blobfoxdisgust.png \
  blobs/blobfox/blobfoxdisputed.png \
  blobs/blobfox/blobfoxdizzy.png \
  blobs/blobfox/blobfoxdoubt.png \
  blobs/blobfox/blobfoxdrakedislike.png \
  blobs/blobfox/blobfoxdrakelike.png \
  blobs/blobfox/blobfoxdrool.png \
  blobs/blobfox/blobfoxevil.png \
  blobs/blobfox/blobfoxeyes.png \
  blobs/blobfox/blobfoxfacepalm.png \
  blobs/blobfox/blobfoxfake.png \
  blobs/blobfox/blobfoxfingerguns.png \
  blobs/blobfox/blobfoxfloof.png \
  blobs/blobfox/blobfoxfloof_w_.png \
  blobs/blobfox/blobfoxfloofcofe.png \
  blobs/blobfox/blobfoxfloofcute.png \
  blobs/blobfox/blobfoxfloofdevil.png \
  blobs/blobfox/blobfoxfloofevil.png \
  blobs/blobfox/blobfoxfloofhappy.png \
  blobs/blobfox/blobfoxfloofowo.png \
  blobs/blobfox/blobfoxfloofreach.png \
  blobs/blobfox/blobfoxflooftea.png \
  blobs/blobfox/blobfoxflower.png \
  blobs/blobfox/blobfoxflowerhair.png \
  blobs/blobfox/blobfoxghost.png \
  blobs/blobfox/blobfoxghostfloof.png \
  blobs/blobfox/blobfoxghostspooky.png \
  blobs/blobfox/blobfoxglare.png \
  blobs/blobfox/blobfoxgoogly.png \
  blobs/blobfox/blobfoxgooglycry.png \
  blobs/blobfox/blobfoxgooglymlem.png \
  blobs/blobfox/blobfoxgooglynomlog.png \
  blobs/blobfox/blobfoxgooglytrash.png \
  blobs/blobfox/blobfoxhappy.png \
  blobs/blobfox/blobfoxhappymlem.png \
  blobs/blobfox/blobfoxheadphones.png \
  blobs/blobfox/blobfoxheart.png \
  blobs/blobfox/blobfoxheartcute.png \
  blobs/blobfox/blobfoxhyper.png \
  blobs/blobfox/blobfoxhyper2.png \
  blobs/blobfox/blobfoxinnocent.png \
  blobs/blobfox/blobfoxinnocentcute.png \
  blobs/blobfox/blobfoxinnocentmlem.png \
  blobs/blobfox/blobfoxkirby.png \
  blobs/blobfox/blobfoxkirbyinhale.png \
  blobs/blobfox/blobfoxknife.png \
  blobs/blobfox/blobfoxlaugh.png \
  blobs/blobfox/blobfoxlaughsweat.png \
  blobs/blobfox/blobfoxlewd.png \
  blobs/blobfox/blobfoxlul.png \
  blobs/blobfox/blobfoxlurk.png \
  blobs/blobfox/blobfoxlurk2.png \
  blobs/blobfox/blobfoxlurk2glare.png \
  blobs/blobfox/blobfoxlurk2owo.png \
  blobs/blobfox/blobfoxlurk2owonotice.png \
  blobs/blobfox/blobfoxlurkaww.png \
  blobs/blobfox/blobfoxlurkglare.png \
  blobs/blobfox/blobfoxlurkowo.png \
  blobs/blobfox/blobfoxlurkowonotice.png \
  blobs/blobfox/blobfoxmegumin.png \
  blobs/blobfox/blobfoxmelt.png \
  blobs/blobfox/blobfoxmelt2.png \
  blobs/blobfox/blobfoxmelt3.png \
  blobs/blobfox/blobfoxmeltblush.png \
  blobs/blobfox/blobfoxmelthappy.png \
  blobs/blobfox/blobfoxmeltmlem.png \
  blobs/blobfox/blobfoxmeltreach.png \
  blobs/blobfox/blobfoxmeltsob.png \
  blobs/blobfox/blobfoxmeltsoblove.png \
  blobs/blobfox/blobfoxmischievous.png \
  blobs/blobfox/blobfoxmlem.png \
  blobs/blobfox/blobfoxmsnugglecentercat.png \
  blobs/blobfox/blobfoxmsnugglecenterfox.png \
  blobs/blobfox/blobfoxmsnuggleleftcat.png \
  blobs/blobfox/blobfoxmsnuggleleftfox.png \
  blobs/blobfox/blobfoxmsnugglerightcat.png \
  blobs/blobfox/blobfoxmsnugglerightfox.png \
  blobs/blobfox/blobfoxmsnugglerightnone.png \
  blobs/blobfox/blobfoxnauseated.png \
  blobs/blobfox/blobfoxnerd.png \
  blobs/blobfox/blobfoxninja.png \
  blobs/blobfox/blobfoxnomball.png \
  blobs/blobfox/blobfoxnombook.png \
  blobs/blobfox/blobfoxnombread.png \
  blobs/blobfox/blobfoxnomburger.png \
  blobs/blobfox/blobfoxnomcake.png \
  blobs/blobfox/blobfoxnomcat.png \
  blobs/blobfox/blobfoxnomcookie.png \
  blobs/blobfox/blobfoxnomcorndog.png \
  blobs/blobfox/blobfoxnomcroutons.png \
  blobs/blobfox/blobfoxnomdonut.png \
  blobs/blobfox/blobfoxnomdonutpolice.png \
  blobs/blobfox/blobfoxnomdonutterrified.png \
  blobs/blobfox/blobfoxnomegg.png \
  blobs/blobfox/blobfoxnomfox.png \
  blobs/blobfox/blobfoxnomfoxburger.png \
  blobs/blobfox/blobfoxnomfoxcookie.png \
  blobs/blobfox/blobfoxnomfoxterrified.png \
  blobs/blobfox/blobfoxnomhotdog.png \
  blobs/blobfox/blobfoxnomicecream.png \
  blobs/blobfox/blobfoxnomlog.png \
  blobs/blobfox/blobfoxnommelon.png \
  blobs/blobfox/blobfoxnommobile.png \
  blobs/blobfox/blobfoxnompizza.png \
  blobs/blobfox/blobfoxnompizzaterrified.png \
  blobs/blobfox/blobfoxnomshoe.png \
  blobs/blobfox/blobfoxnomstrawberry.png \
  blobs/blobfox/blobfoxnomtomato.png \
  blobs/blobfox/blobfoxnotamused.png \
  blobs/blobfox/blobfoxnotlikethis.png \
  blobs/blobfox/blobfoxo_o.png \
  blobs/blobfox/blobfoxonepunch.png \
  blobs/blobfox/blobfoxoutage.png \
  blobs/blobfox/blobfoxowo.png \
  blobs/blobfox/blobfoxowomlem.png \
  blobs/blobfox/blobfoxowonotice.png \
  blobs/blobfox/blobfoxpat.png \
  blobs/blobfox/blobfoxpatdeny.png \
  blobs/blobfox/blobfoxpatghost.png \
  blobs/blobfox/blobfoxpatgoogly.png \
  blobs/blobfox/blobfoxpatmelt.png \
  blobs/blobfox/blobfoxpatmelt2.png \
  blobs/blobfox/blobfoxpatmelt3.png \
  blobs/blobfox/blobfoxpatneutral.png \
  blobs/blobfox/blobfoxpatsad.png \
  blobs/blobfox/blobfoxpeek.png \
  blobs/blobfox/blobfoxpeekcomfy.png \
  blobs/blobfox/blobfoxpeekknife.png \
  blobs/blobfox/blobfoxpeekowo.png \
  blobs/blobfox/blobfoxpeekpolice.png \
  blobs/blobfox/blobfoxpirate.png \
  blobs/blobfox/blobfoxpleading.png \
  blobs/blobfox/blobfoxpolice.png \
  blobs/blobfox/blobfoxprelurkcofe.png \
  blobs/blobfox/blobfoxprelurkcroutons.png \
  blobs/blobfox/blobfoxprelurkdonut.png \
  blobs/blobfox/blobfoxrage.png \
  blobs/blobfox/blobfoxragelarge1.png \
  blobs/blobfox/blobfoxragelarge2.png \
  blobs/blobfox/blobfoxragelarge3.png \
  blobs/blobfox/blobfoxragelarge4.png \
  blobs/blobfox/blobfoxreach.png \
  blobs/blobfox/blobfoxreachaww.png \
  blobs/blobfox/blobfoxread.png \
  blobs/blobfox/blobfoxreinderp.png \
  blobs/blobfox/blobfoxretsuko.png \
  blobs/blobfox/blobfoxsad.png \
  blobs/blobfox/blobfoxsanta.png \
  blobs/blobfox/blobfoxscared.png \
  blobs/blobfox/blobfoxscience.png \
  blobs/blobfox/blobfoxshocked.png \
  blobs/blobfox/blobfoxshy.png \
  blobs/blobfox/blobfoxsignbaka.png \
  blobs/blobfox/blobfoxsignbigfan.png \
  blobs/blobfox/blobfoxsignforbidden.png \
  blobs/blobfox/blobfoxsigngenau.png \
  blobs/blobfox/blobfoxsignno.png \
  blobs/blobfox/blobfoxsignnou.png \
  blobs/blobfox/blobfoxsignnoublush.png \
  blobs/blobfox/blobfoxsignsrcpls.png \
  blobs/blobfox/blobfoxsignthx.png \
  blobs/blobfox/blobfoxsignyes.png \
  blobs/blobfox/blobfoxsignyip.png \
  blobs/blobfox/blobfoxsip.png \
  blobs/blobfox/blobfoxsipglare.png \
  blobs/blobfox/blobfoxsipowo.png \
  blobs/blobfox/blobfoxsipsmug.png \
  blobs/blobfox/blobfoxsipterrified.png \
  blobs/blobfox/blobfoxsleep.png \
  blobs/blobfox/blobfoxsleepdab.png \
  blobs/blobfox/blobfoxsmirk.png \
  blobs/blobfox/blobfoxsmug.png \
  blobs/blobfox/blobfoxsnug.png \
  blobs/blobfox/blobfoxsnugglare.png \
  blobs/blobfox/blobfoxsnuggle.png \
  blobs/blobfox/blobfoxsnugowo.png \
  blobs/blobfox/blobfoxsnugterrified.png \
  blobs/blobfox/blobfoxstabbed.png \
  blobs/blobfox/blobfoxsurprised.png \
  blobs/blobfox/blobfoxsweating.png \
  blobs/blobfox/blobfoxtableflip.png \
  blobs/blobfox/blobfoxtea.png \
  blobs/blobfox/blobfoxtea_w_.png \
  blobs/blobfox/blobfoxteacute.png \
  blobs/blobfox/blobfoxteaglare.png \
  blobs/blobfox/blobfoxteamlem.png \
  blobs/blobfox/blobfoxteaowo.png \
  blobs/blobfox/blobfoxteaterrified.png \
  blobs/blobfox/blobfoxterrified.png \
  blobs/blobfox/blobfoxthief.png \
  blobs/blobfox/blobfoxthink.png \
  blobs/blobfox/blobfoxthinkanime.png \
  blobs/blobfox/blobfoxthinkgoogly.png \
  blobs/blobfox/blobfoxthinking.png \
  blobs/blobfox/blobfoxthinkowo.png \
  blobs/blobfox/blobfoxthinksmart.png \
  blobs/blobfox/blobfoxthinksmirk.png \
  blobs/blobfox/blobfoxthisisfine.png \
  blobs/blobfox/blobfoxthonking.png \
  blobs/blobfox/blobfoxthumbsdown.png \
  blobs/blobfox/blobfoxthumbsup.png \
  blobs/blobfox/blobfoxtrash.png \
  blobs/blobfox/blobfoxtsundere.png \
  blobs/blobfox/blobfoxuno.png \
  blobs/blobfox/blobfoxunoterrified.png \
  blobs/blobfox/blobfoxupset.png \
  blobs/blobfox/blobfoxupsidedown.png \
  blobs/blobfox/blobfoxupsidedowndizzy.png \
  blobs/blobfox/blobfoxuwu.png \
  blobs/blobfox/blobfoxwashingmachine.png \
  blobs/blobfox/blobfoxwater.png \
  blobs/blobfox/blobfoxwave.png \
  blobs/blobfox/blobfoxwet.png \
  blobs/blobfox/blobfoxwhaaaat.png \
  blobs/blobfox/blobfoxwhoaa.png \
  blobs/blobfox/blobfoxwink.png \
  blobs/blobfox/blobfoxwinkmlem.png \
  blobs/blobfox/blobfoxworried.png \
  blobs/blobfox/blobfoxyandere.png \
  blobs/blobfox/blobfoxyeet.png \
  blobs/blobfox/blobfoxyoshieat.png \
  blobs/blobfox/blobfoxyoshieatpixel.png \
  blobs/blobfox/blobfoxyoshiend.png \
  blobs/blobfox/blobfoxyoshimid.png

blobs/blobfox.assets: $(blobs/blobfox.assets)

blobs/blobfox.check: $(blobs/blobfox.meta) $(blobs/blobfox.assets)
	.script/check_metadata_integrity.sh blobs/blobfox

blobs.blobfox.zip: $(blobs/blobfox.meta) $(blobs/blobfox.assets)
	cd blobs/blobfox && zip ../../blobs.blobfox.zip meta.json ./*.png

blobs/blobfox/%.png: ../blobs/blobfox/%.png blobs/.blobfox.pre
	optipng -q --fix "$<" -out "$@"


# Cat Is Blob
blobs/cat_is_blob: blobs.cat_is_blob.zip

blobs/.cat_is_blob.pre: .blobs.pre
	mkdir -p "blobs/cat_is_blob"
	touch "blobs/.cat_is_blob.pre"

blobs/cat_is_blob.clean:
	-rm -rf "blobs/cat_is_blob/"
	-rm "blobs.cat_is_blob.zip"
	-rm "blobs/.cat_is_blob.pre"

blobs/cat_is_blob.meta= blobs/cat_is_blob/meta.json

blobs/cat_is_blob.meta: $(blobs/cat_is_blob.meta)

blobs/cat_is_blob.assets= \
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
  blobs/cat_is_blob/cat_is_woem.gif

blobs/cat_is_blob.assets: $(blobs/cat_is_blob.assets)

blobs/cat_is_blob.check: $(blobs/cat_is_blob.meta) $(blobs/cat_is_blob.assets)
	.script/check_metadata_integrity.sh blobs/cat_is_blob

blobs.cat_is_blob.zip: $(blobs/cat_is_blob.meta) $(blobs/cat_is_blob.assets)
	cd blobs/cat_is_blob && zip ../../blobs.cat_is_blob.zip meta.json ./*.gif

blobs/cat_is_blob/%.gif: ../submodules/cat-is-blob/%.gif blobs/.cat_is_blob.pre
	cp "$<" "$@"


# Meowmoji
blobs/meowmoji: blobs.meowmoji.zip

blobs/.meowmoji.pre: .blobs.pre
	mkdir -p "blobs/meowmoji"
	touch "blobs/.meowmoji.pre"

blobs/meowmoji.clean:
	-rm -rf "blobs/meowmoji/"
	-rm "blobs.meowmoji.zip"
	-rm "blobs/.meowmoji.pre"

blobs/meowmoji.meta= blobs/meowmoji/meta.json

blobs/meowmoji.meta: $(blobs/meowmoji.meta)

blobs/meowmoji.assets= \
  blobs/meowmoji/ameowsweats.gif \
  blobs/meowmoji/ameowsparkle.gif \
  blobs/meowmoji/ameowwave.gif \
  blobs/meowmoji/ameowowoevil.gif \
  blobs/meowmoji/ameowthinkingsmirk.gif \
  blobs/meowmoji/ameowowo.gif \
  blobs/meowmoji/ameownervous.gif \
  blobs/meowmoji/ameowtrampoline.gif \
  blobs/meowmoji/meowstop.png \
  blobs/meowmoji/ameowhungry.gif \
  blobs/meowmoji/ameowsip.gif \
  blobs/meowmoji/ameowsipb.gif \
  blobs/meowmoji/meoweyes.png \
  blobs/meowmoji/meowsad.png \
  blobs/meowmoji/meowsip.png \
  blobs/meowmoji/ameowredbull.gif \
  blobs/meowmoji/ameowcoffee.gif \
  blobs/meowmoji/ameowcoffeespit.gif \
  blobs/meowmoji/ameownom.gif \
  blobs/meowmoji/ameowree.gif \
  blobs/meowmoji/aphotomeow.gif \
  blobs/meowmoji/ameowmaracas.gif \
  blobs/meowmoji/ameowmaracasfast.gif \
  blobs/meowmoji/ameowheartrip.gif \
  blobs/meowmoji/ameowoh.gif \
  blobs/meowmoji/meowcowboy.png \
  blobs/meowmoji/ameowlurk.gif \
  blobs/meowmoji/ameowpartyattention.gif \
  blobs/meowmoji/ameowattention.gif \
  blobs/meowmoji/ameowattentionrev.gif \
  blobs/meowmoji/ameowhearteyes.gif \
  blobs/meowmoji/ameowmeltwave.gif \
  blobs/meowmoji/ameowreach.gif \
  blobs/meowmoji/ameowreachrev.gif \
  blobs/meowmoji/ameowdab.gif \
  blobs/meowmoji/ameowparty.gif \
  blobs/meowmoji/ameowwaverev.gif \
  blobs/meowmoji/meowparty.png \
  blobs/meowmoji/ameownomcookie.gif \
  blobs/meowmoji/ameownod.gif \
  blobs/meowmoji/ameowcomfywave.gif \
  blobs/meowmoji/ameownodfast.gif \
  blobs/meowmoji/meowthump.png \
  blobs/meowmoji/meowamused.png \
  blobs/meowmoji/meownotamused.png \
  blobs/meowmoji/meowthumbsup.png \
  blobs/meowmoji/meowthinking.png \
  blobs/meowmoji/notlikemeow.png \
  blobs/meowmoji/meowrollingeyes.png \
  blobs/meowmoji/meowheroglow.png \
  blobs/meowmoji/meownervoussweat.png \
  blobs/meowmoji/meowsmilehappyeyes.png \
  blobs/meowmoji/meowfacepalm.png \
  blobs/meowmoji/meowsalute.png \
  blobs/meowmoji/meowmelt.png \
  blobs/meowmoji/meowheart.png \
  blobs/meowmoji/meowsmirk.png \
  blobs/meowmoji/meowgrin.png \
  blobs/meowmoji/meowhammer.png \
  blobs/meowmoji/meowhyperthink.png \
  blobs/meowmoji/meowuwu.png \
  blobs/meowmoji/meowowo.png \
  blobs/meowmoji/meowthinkingcool.png \
  blobs/meowmoji/meowdrool.png \
  blobs/meowmoji/meownauseated.png \
  blobs/meowmoji/meowpopcorn.png \
  blobs/meowmoji/meowwaitwhat.png \
  blobs/meowmoji/meowupset.png \
  blobs/meowmoji/meowtilt.png \
  blobs/meowmoji/meowsleepless.png \
  blobs/meowmoji/meowtired.png \
  blobs/meowmoji/meowtears.png \
  blobs/meowmoji/meowblessup.png \
  blobs/meowmoji/meowlul.png \
  blobs/meowmoji/photomeow.png \
  blobs/meowmoji/meowpats.png \
  blobs/meowmoji/meowglare.png \
  blobs/meowmoji/meowowoevil.png \
  blobs/meowmoji/meowpurrfetto.png \
  blobs/meowmoji/meowblush.png \
  blobs/meowmoji/meowthinkingsmirk.png \
  blobs/meowmoji/ameowmelt.gif \
  blobs/meowmoji/meowlove.png \
  blobs/meowmoji/ameowdansen.gif \
  blobs/meowmoji/ameowbouncefast.gif \
  blobs/meowmoji/ameowenjoyrain.gif \
  blobs/meowmoji/ameowenjoysnow.gif \
  blobs/meowmoji/ameowenjoy.gif \
  blobs/meowmoji/meowpraise.png \
  blobs/meowmoji/meowshh.png \
  blobs/meowmoji/meowpensive.png \
  blobs/meowmoji/meowhuggies.png \
  blobs/meowmoji/ameowstretch3.gif \
  blobs/meowmoji/ameowstretch2.gif \
  blobs/meowmoji/ameowstretch1.gif \
  blobs/meowmoji/ameowsad.gif \
  blobs/meowmoji/meowovo.png \
  blobs/meowmoji/ameowdundundun.gif \
  blobs/meowmoji/meowalien.png \
  blobs/meowmoji/kirbeow.png \
  blobs/meowmoji/ameowrainbowheart.gif \
  blobs/meowmoji/meowez.png \
  blobs/meowmoji/meowsipsmile.png \
  blobs/meowmoji/meowbox.png \
  blobs/meowmoji/meownitro.png \
  blobs/meowmoji/ameowderpy.gif \
  blobs/meowmoji/meowboost.png \
  blobs/meowmoji/ameowbongo.gif \
  blobs/meowmoji/ameowbongotap.gif \
  blobs/meowmoji/ameowwobble.gif \
  blobs/meowmoji/ameowbounce.gif \
  blobs/meowmoji/ameowpeek.gif \
  blobs/meowmoji/meowaww.png \
  blobs/meowmoji/ameowbox.gif \
  blobs/meowmoji/ameowhappypaws.gif \
  blobs/meowmoji/ameowheckedrainbow.gif \
  blobs/meowmoji/ameowhecked.gif \
  blobs/meowmoji/ameowglarezoom.gif \
  blobs/meowmoji/ameowwhat.gif \
  blobs/meowmoji/meowerm.png \
  blobs/meowmoji/meowslightsmile.png \
  blobs/meowmoji/ameowbop.gif \
  blobs/meowmoji/meowpensivepray.png \
  blobs/meowmoji/meowpeek.png \
  blobs/meowmoji/meowflushed.png \
  blobs/meowmoji/ameowhyperthink.gif \
  blobs/meowmoji/ameowrollingeyes.gif \
  blobs/meowmoji/ameowglare.gif \
  blobs/meowmoji/ameowheroglow.gif \
  blobs/meowmoji/ameowdrool.gif \
  blobs/meowmoji/ameowtired.gif \
  blobs/meowmoji/meowsleeping.png \
  blobs/meowmoji/meowthinkingglare.png \
  blobs/meowmoji/meowscream.png \
  blobs/meowmoji/meowgift.png \
  blobs/meowmoji/meowhearteyes.png \
  blobs/meowmoji/meowdizzy.png \
  blobs/meowmoji/meowghosttilt.png \
  blobs/meowmoji/meowupsidedown.png \
  blobs/meowmoji/meownom.png \
  blobs/meowmoji/meowneutral.png \
  blobs/meowmoji/meowwaverev.png \
  blobs/meowmoji/meowthinkinghearteyes.png \
  blobs/meowmoji/meowsmile.png \
  blobs/meowmoji/meowhuh.png \
  blobs/meowmoji/meowmelttears.png \
  blobs/meowmoji/meowping.png \
  blobs/meowmoji/meowsadpats.png \
  blobs/meowmoji/meowsnuggle.png \
  blobs/meowmoji/ameowp1.gif \
  blobs/meowmoji/ameowp2.gif \
  blobs/meowmoji/meowevilknife.png \
  blobs/meowmoji/ameowp3.gif \
  blobs/meowmoji/ameowp4.gif \
  blobs/meowmoji/ameowp5.gif \
  blobs/meowmoji/ameowp6.gif \
  blobs/meowmoji/ameowp7.gif \
  blobs/meowmoji/ameowp8.gif \
  blobs/meowmoji/ameowp9.gif \
  blobs/meowmoji/meowcamera.png \
  blobs/meowmoji/meowastonished.png \
  blobs/meowmoji/meowwave.png \
  blobs/meowmoji/lordmeow.png \
  blobs/meowmoji/meowpolice.png \
  blobs/meowmoji/meowkiss.png \
  blobs/meowmoji/meowpout.png \
  blobs/meowmoji/meowcoy.png \
  blobs/meowmoji/meowcheer.png \
  blobs/meowmoji/meowmeltmeltmeltmelt.png \
  blobs/meowmoji/meowsweats.png \
  blobs/meowmoji/meowdevil.png \
  blobs/meowmoji/meowbrokenheart.png \
  blobs/meowmoji/meowbot.png \
  blobs/meowmoji/ameowsipzoom.gif \
  blobs/meowmoji/meowsob.png \
  blobs/meowmoji/meowmeltmeltmelt.png \
  blobs/meowmoji/meowmeltmelt.png \
  blobs/meowmoji/ameowsipbfast.gif \
  blobs/meowmoji/meowangel.png \
  blobs/meowmoji/meowtongue.png \
  blobs/meowmoji/meowdead.png \
  blobs/meowmoji/meownerd.png \
  blobs/meowmoji/meowhungry.png \
  blobs/meowmoji/meowokhand.png \
  blobs/meowmoji/meowzippermouth.png \
  blobs/meowmoji/meowreachrev.png \
  blobs/meowmoji/meowreach.png \
  blobs/meowmoji/meowopenmouth.png \
  blobs/meowmoji/meowweary.png \
  blobs/meowmoji/meownomcookie.png \
  blobs/meowmoji/meowwink.png \
  blobs/meowmoji/meowthumbsdown.png \
  blobs/meowmoji/meowsadlife.png \
  blobs/meowmoji/meowshrug.png \
  blobs/meowmoji/meowidea.png \
  blobs/meowmoji/meowwavepeek.png \
  blobs/meowmoji/meowoh.png \
  blobs/meowmoji/meowthinkingportal.png \
  blobs/meowmoji/meowsmilesweat.png \
  blobs/meowmoji/meowcontroller.png \
  blobs/meowmoji/meowmeltdeer.png \
  blobs/meowmoji/meowpumpkin.png \
  blobs/meowmoji/meowhohoho.png \
  blobs/meowmoji/meowmask.png \
  blobs/meowmoji/meowfistbumpL.png \
  blobs/meowmoji/meowfistbumpR.png \
  blobs/meowmoji/meowthonkang.png \
  blobs/meowmoji/meow0w0.png \
  blobs/meowmoji/meowhearthug.png \
  blobs/meowmoji/meowknifepeek.png \
  blobs/meowmoji/meowcoffee.png \
  blobs/meowmoji/meowiceblob.png \
  blobs/meowmoji/woem.png \
  blobs/meowmoji/meowmorning.png \
  blobs/meowmoji/meowevening.png \
  blobs/meowmoji/meowdetective.png \
  blobs/meowmoji/meowxd.png \
  blobs/meowmoji/meowheadphones.png \
  blobs/meowmoji/meowbughunter.png \
  blobs/meowmoji/meowwoah.png \
  blobs/meowmoji/meowfux.png \
  blobs/meowmoji/meowreachsad.png \
  blobs/meowmoji/meowreachsadrev.png \
  blobs/meowmoji/meowthinksmart.png \
  blobs/meowmoji/meowbandage.png \
  blobs/meowmoji/meowyikes.png \
  blobs/meowmoji/meowjustright.png \
  blobs/meowmoji/meowpain.png \
  blobs/meowmoji/meowhug.png \
  blobs/meowmoji/meowdab.png \
  blobs/meowmoji/meowstronaut.png \
  blobs/meowmoji/meowteef.png \
  blobs/meowmoji/meoweyespout.png \
  blobs/meowmoji/meowhello.png \
  blobs/meowmoji/meowwhistle.png \
  blobs/meowmoji/meowsmileopenmouth.png \
  blobs/meowmoji/meowterrified.png \
  blobs/meowmoji/meowninja.png \
  blobs/meowmoji/meowtonguewink.png \
  blobs/meowmoji/meowcry.png \
  blobs/meowmoji/meowmad.png \
  blobs/meowmoji/meowvampire.png \
  blobs/meowmoji/meowenjoy.png \
  blobs/meowmoji/meowyaranaika.png \
  blobs/meowmoji/meowpins.png \
  blobs/meowmoji/meowmeltthumbsuptears.png \
  blobs/meowmoji/meowhmpf.png \
  blobs/meowmoji/meowcrown.png \
  blobs/meowmoji/meowcare.png \
  blobs/meowmoji/meownervous.png \
  blobs/meowmoji/meowknife.png \
  blobs/meowmoji/meowfingergunsrev.png \
  blobs/meowmoji/meowfine.png \
  blobs/meowmoji/meowsurprised.png \
  blobs/meowmoji/meowbaka.png \
  blobs/meowmoji/meowpwettyplease.png \
  blobs/meowmoji/meowflirty.png \
  blobs/meowmoji/meowstarstruck.png \
  blobs/meowmoji/meowbigsob.png \
  blobs/meowmoji/meowextremejoy.png \
  blobs/meowmoji/meowreachsobrev.png \
  blobs/meowmoji/meowreachsob.png \
  blobs/meowmoji/meowuwucry.png \
  blobs/meowmoji/meowflower.png \
  blobs/meowmoji/meowsquee.png \
  blobs/meowmoji/meowfingerguns.png \
  blobs/meowmoji/meowthis.png \
  blobs/meowmoji/meowtrash.png \
  blobs/meowmoji/meowmage.png \
  blobs/meowmoji/meowangery.png \
  blobs/meowmoji/meowclown.png \
  blobs/meowmoji/meowderpy.png \
  blobs/meowmoji/meowscared.png \
  blobs/meowmoji/meowmeltthumbsup.png \
  blobs/meowmoji/meownwn.png \
  blobs/meowmoji/meowpirate.png \
  blobs/meowmoji/meowtihihi.png \
  blobs/meowmoji/notlikemeowcry.png \
  blobs/meowmoji/meowawauu.png \
  blobs/meowmoji/meowspy.png \
  blobs/meowmoji/meowono.png \
  blobs/meowmoji/meowsorry.png \
  blobs/meowmoji/meowkindasus.png \
  blobs/meowmoji/meowsipglare.png \
  blobs/meowmoji/meowtage.png \
  blobs/meowmoji/meowghostwave.png \
  blobs/meowmoji/meowgiggle.png \
  blobs/meowmoji/meowloser.png \
  blobs/meowmoji/meownomouth.png \
  blobs/meowmoji/meow3.png \
  blobs/meowmoji/meowa.png \
  blobs/meowmoji/meowb.png \
  blobs/meowmoji/meowc.png \
  blobs/meowmoji/meowd.png \
  blobs/meowmoji/meowe.png \
  blobs/meowmoji/meowf.png \
  blobs/meowmoji/meowg.png \
  blobs/meowmoji/meowh.png \
  blobs/meowmoji/meowi.png \
  blobs/meowmoji/meowj.png \
  blobs/meowmoji/meowk.png \
  blobs/meowmoji/meowl.png \
  blobs/meowmoji/meowm.png \
  blobs/meowmoji/meown.png \
  blobs/meowmoji/meowo.png \
  blobs/meowmoji/meowp.png \
  blobs/meowmoji/meowq.png \
  blobs/meowmoji/meowr.png \
  blobs/meowmoji/meows.png \
  blobs/meowmoji/meowt.png \
  blobs/meowmoji/meowu.png \
  blobs/meowmoji/meowv.png \
  blobs/meowmoji/meoww.png \
  blobs/meowmoji/meowx.png \
  blobs/meowmoji/meowy.png \
  blobs/meowmoji/meowz.png \
  blobs/meowmoji/meow0.png \
  blobs/meowmoji/meow1.png \
  blobs/meowmoji/meow2.png \
  blobs/meowmoji/meow4.png \
  blobs/meowmoji/meow5.png \
  blobs/meowmoji/meow6.png \
  blobs/meowmoji/meow7.png \
  blobs/meowmoji/meow8.png \
  blobs/meowmoji/meow9.png \
  blobs/meowmoji/meowgreentick.png \
  blobs/meowmoji/meowredtick.png \
  blobs/meowmoji/meowexclamation.png \
  blobs/meowmoji/meowquestion.png \
  blobs/meowmoji/meowok.png \
  blobs/meowmoji/meownou.png \
  blobs/meowmoji/meowoku.png \
  blobs/meowmoji/meownome.png \
  blobs/meowmoji/meowokme.png \
  blobs/meowmoji/meowpuffystare.png \
  blobs/meowmoji/meowpuffyteddynom.png \
  blobs/meowmoji/meowpuffyhappytears.png \
  blobs/meowmoji/meowpuffyteddy.png \
  blobs/meowmoji/meowpuffyhearteyes.png \
  blobs/meowmoji/meowpuffytilt.png \
  blobs/meowmoji/meowpuffyheadphones.png \
  blobs/meowmoji/meowpuffygrope.png \
  blobs/meowmoji/meowpuffyshy.png \
  blobs/meowmoji/meowpuffydoublefux.png \
  blobs/meowmoji/meowpuffyfux.png \
  blobs/meowmoji/meowpuffyzoomfux.png \
  blobs/meowmoji/meowpuffymelt.png \
  blobs/meowmoji/meowpuffygottem.png \
  blobs/meowmoji/meowpuffyohhh.png \
  blobs/meowmoji/meowpuffydizzy.png \
  blobs/meowmoji/photomeowpuffy.png \
  blobs/meowmoji/meowpuffyterrified.png \
  blobs/meowmoji/meowpuffyblush.png \
  blobs/meowmoji/meowpuffytears.png \
  blobs/meowmoji/meowpuffysoul.png \
  blobs/meowmoji/meowpuffynerd.png \
  blobs/meowmoji/meowpuffypleading.png \
  blobs/meowmoji/meowpuffysup.png \
  blobs/meowmoji/meowpuffyhuh.png \
  blobs/meowmoji/meowpuffyblep.png \
  blobs/meowmoji/meowpuffymorning.png \
  blobs/meowmoji/meowpuffyevening.png \
  blobs/meowmoji/meowpuffybigeyes.png

blobs/meowmoji.assets: $(blobs/meowmoji.assets)

blobs/meowmoji.check: $(blobs/meowmoji.meta) $(blobs/meowmoji.assets)
	.script/check_metadata_integrity.sh blobs/meowmoji

blobs.meowmoji.zip: $(blobs/meowmoji.meta) $(blobs/meowmoji.assets)
	cd blobs/meowmoji && zip ../../blobs.meowmoji.zip meta.json ./*.png ./*.gif

blobs/meowmoji/%.png: ../blobs/meowmoji/%.png blobs/.meowmoji.pre
	optipng -q --fix "$<" -out "$@"

blobs/meowmoji/%.gif: ../blobs/meowmoji/%.gif blobs/.meowmoji.pre
	cp "$<" "$@"


# QueetCats
blobs/queercats: blobs.queercats.zip

blobs/.queercats.pre: .blobs.pre
	mkdir -p "blobs/queercats"
	touch "blobs/.queercats.pre"

blobs/queercats.clean:
	-rm -rf "blobs/queercats/"
	-rm "blobs.queercats.zip"
	-rm "blobs/.queercats.pre"

blobs/queercats.meta= blobs/queercats/meta.json

blobs/queercats.meta: $(blobs/queercats.meta)

blobs/queercats.assets= \
  blobs/queercats/meta.json \
  blobs/queercats/queercat.png \
  blobs/queercats/queercat_ace.png \
  blobs/queercats/queercat_agender.png \
  blobs/queercats/queercat_aromantic.png \
  blobs/queercats/queercat_autism.png \
  blobs/queercats/queercat_bisexual.png \
  blobs/queercats/queercat_enby.png \
  blobs/queercats/queercat_genderfluid.png \
  blobs/queercats/queercat_genderqueer.png \
  blobs/queercats/queercat_intersex.png \
  blobs/queercats/queercat_lesbian.png \
  blobs/queercats/queercat_malehomosexual.png \
  blobs/queercats/queercat_pansexual.png \
  blobs/queercats/queercat_polyamory.png \
  blobs/queercats/queercat_polyamory_new.png \
  blobs/queercats/queercat_polysexual.png \
  blobs/queercats/queercat_pride.png \
  blobs/queercats/queercat_sapphic.png \
  blobs/queercats/queercat_trans.png \
  blobs/queercats/queercatheart_ace.png \
  blobs/queercats/queercatheart_agender.png \
  blobs/queercats/queercatheart_aromantic.png \
  blobs/queercats/queercatheart_autism.png \
  blobs/queercats/queercatheart_bisexual.png \
  blobs/queercats/queercatheart_enby.png \
  blobs/queercats/queercatheart_genderfluid.png \
  blobs/queercats/queercatheart_genderqueer.png \
  blobs/queercats/queercatheart_intersex.png \
  blobs/queercats/queercatheart_lesbian.png \
  blobs/queercats/queercatheart_malehomosexual.png \
  blobs/queercats/queercatheart_pansexual.png \
  blobs/queercats/queercatheart_polyamory.png \
  blobs/queercats/queercatheart_polysexual.png \
  blobs/queercats/queercatheart_pride.png \
  blobs/queercats/queercatheart_sapphic.png \
  blobs/queercats/queercatheart_trans.png \
  blobs/queercats/queercatmorningcoffee_ace.png \
  blobs/queercats/queercatmorningcoffee_agender.png \
  blobs/queercats/queercatmorningcoffee_aromantic.png \
  blobs/queercats/queercatmorningcoffee_austism.png \
  blobs/queercats/queercatmorningcoffee_bisexual.png \
  blobs/queercats/queercatmorningcoffee_blackTransgender.png \
  blobs/queercats/queercatmorningcoffee_demiboy.png \
  blobs/queercats/queercatmorningcoffee_demigirl.png \
  blobs/queercats/queercatmorningcoffee_enby.png \
  blobs/queercats/queercatmorningcoffee_genderfluid.png \
  blobs/queercats/queercatmorningcoffee_genderqueer.png \
  blobs/queercats/queercatmorningcoffee_intersex.png \
  blobs/queercats/queercatmorningcoffee_lesbian.png \
  blobs/queercats/queercatmorningcoffee_malehomosexual.png \
  blobs/queercats/queercatmorningcoffee_pansexual.png \
  blobs/queercats/queercatmorningcoffee_polyamory.png \
  blobs/queercats/queercatmorningcoffee_polysexual.png \
  blobs/queercats/queercatmorningcoffee_pride.png \
  blobs/queercats/queercatmorningcoffee_progress.png \
  blobs/queercats/queercatmorningcoffee_sapphic.png \
  blobs/queercats/queercatmorningcoffee_transgender.png

blobs/queercats.assets: $(blobs/queercats.assets)

blobs/queercats.check: $(blobs/queercats.meta) $(blobs/queercats.assets)
	.script/check_metadata_integrity.sh blobs/queercats

blobs.queercats.zip: $(blobs/queercats.meta) $(blobs/queercats.assets)
	cd blobs/queercats && zip ../../blobs.queercats.zip meta.json ./*.png

blobs/queercats/queercat.png: ../submodules/QueerCats/SVG/Queer\ Cat.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 '../submodules/QueerCats/SVG/Queer Cat.svg' blobs/queercats/queercat.png
	optipng -q blobs/queercats/queercat.png

blobs/queercats/queercat_ace.png: ../submodules/QueerCats/SVG/body/QueerCat_Ace.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/body/QueerCat_Ace.svg blobs/queercats/queercat_ace.png
	optipng -q blobs/queercats/queercat_ace.png

blobs/queercats/queercat_agender.png: ../submodules/QueerCats/SVG/body/QueerCat_Agender.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/body/QueerCat_Agender.svg blobs/queercats/queercat_agender.png
	optipng -q blobs/queercats/queercat_agender.png

blobs/queercats/queercat_aromantic.png: ../submodules/QueerCats/SVG/body/QueerCat_Aromantic.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/body/QueerCat_Aromantic.svg blobs/queercats/queercat_aromantic.png
	optipng -q blobs/queercats/queercat_aromantic.png

blobs/queercats/queercat_autism.png: ../submodules/QueerCats/SVG/body/QueerCat_Autism.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/body/QueerCat_Autism.svg blobs/queercats/queercat_autism.png
	optipng -q blobs/queercats/queercat_autism.png

blobs/queercats/queercat_bisexual.png: ../submodules/QueerCats/SVG/body/QueerCat_Bisexual.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/body/QueerCat_Bisexual.svg blobs/queercats/queercat_bisexual.png
	optipng -q blobs/queercats/queercat_bisexual.png

blobs/queercats/queercat_enby.png: ../submodules/QueerCats/SVG/body/QueerCat_Enby.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/body/QueerCat_Enby.svg blobs/queercats/queercat_enby.png
	optipng -q blobs/queercats/queercat_enby.png

blobs/queercats/queercat_genderfluid.png: ../submodules/QueerCats/SVG/body/QueerCat_Genderfluid.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/body/QueerCat_Genderfluid.svg blobs/queercats/queercat_genderfluid.png
	optipng -q blobs/queercats/queercat_genderfluid.png

blobs/queercats/queercat_genderqueer.png: ../submodules/QueerCats/SVG/body/QueerCat_Genderqueer.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/body/QueerCat_Genderqueer.svg blobs/queercats/queercat_genderqueer.png
	optipng -q blobs/queercats/queercat_genderqueer.png

blobs/queercats/queercat_intersex.png: ../submodules/QueerCats/SVG/body/QueerCat_Intersex.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/body/QueerCat_Intersex.svg blobs/queercats/queercat_intersex.png
	optipng -q blobs/queercats/queercat_intersex.png

blobs/queercats/queercat_lesbian.png: ../submodules/QueerCats/SVG/body/QueerCat_Lesbian.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/body/QueerCat_Lesbian.svg blobs/queercats/queercat_lesbian.png
	optipng -q blobs/queercats/queercat_lesbian.png

blobs/queercats/queercat_malehomosexual.png: ../submodules/QueerCats/SVG/body/QueerCat_MaleHomosexual.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/body/QueerCat_MaleHomosexual.svg blobs/queercats/queercat_malehomosexual.png
	optipng -q blobs/queercats/queercat_malehomosexual.png

blobs/queercats/queercat_pansexual.png: ../submodules/QueerCats/SVG/body/QueerCat_Pansexual.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/body/QueerCat_Pansexual.svg blobs/queercats/queercat_pansexual.png
	optipng -q blobs/queercats/queercat_pansexual.png

blobs/queercats/queercat_polyamory.png: ../submodules/QueerCats/SVG/body/QueerCat_Polyamory.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/body/QueerCat_Polyamory.svg blobs/queercats/queercat_polyamory.png
	optipng -q blobs/queercats/queercat_polyamory.png

blobs/queercats/queercat_polyamory_new.png: ../submodules/QueerCats/SVG/body/QueerCat_Polyamory_New.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/body/QueerCat_Polyamory_New.svg blobs/queercats/queercat_polyamory_new.png
	optipng -q blobs/queercats/queercat_polyamory_new.png

blobs/queercats/queercat_polysexual.png: ../submodules/QueerCats/SVG/body/QueerCat_Polysexual.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/body/QueerCat_Polysexual.svg blobs/queercats/queercat_polysexual.png
	optipng -q blobs/queercats/queercat_polysexual.png

blobs/queercats/queercat_pride.png: ../submodules/QueerCats/SVG/body/QueerCat_Pride.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/body/QueerCat_Pride.svg blobs/queercats/queercat_pride.png
	optipng -q blobs/queercats/queercat_pride.png

blobs/queercats/queercat_sapphic.png: ../submodules/QueerCats/SVG/body/QueerCat_Sapphic.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/body/QueerCat_Sapphic.svg blobs/queercats/queercat_sapphic.png
	optipng -q blobs/queercats/queercat_sapphic.png

blobs/queercats/queercat_trans.png: ../submodules/QueerCats/SVG/body/QueerCat_Trans.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/body/QueerCat_Trans.svg blobs/queercats/queercat_trans.png
	optipng -q blobs/queercats/queercat_trans.png

blobs/queercats/queercatheart_ace.png: ../submodules/QueerCats/SVG/heart/QueerCatHeart_Ace.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/heart/QueerCatHeart_Ace.svg blobs/queercats/queercatheart_ace.png
	optipng -q blobs/queercats/queercatheart_ace.png

blobs/queercats/queercatheart_agender.png: ../submodules/QueerCats/SVG/heart/QueerCatHeart_Agender.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/heart/QueerCatHeart_Agender.svg blobs/queercats/queercatheart_agender.png
	optipng -q blobs/queercats/queercatheart_agender.png

blobs/queercats/queercatheart_aromantic.png: ../submodules/QueerCats/SVG/heart/QueerCatHeart_Aromantic.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/heart/QueerCatHeart_Aromantic.svg blobs/queercats/queercatheart_aromantic.png
	optipng -q blobs/queercats/queercatheart_aromantic.png

blobs/queercats/queercatheart_autism.png: ../submodules/QueerCats/SVG/heart/QueerCatHeart_Autism.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/heart/QueerCatHeart_Autism.svg blobs/queercats/queercatheart_autism.png
	optipng -q blobs/queercats/queercatheart_autism.png

blobs/queercats/queercatheart_bisexual.png: ../submodules/QueerCats/SVG/heart/QueerCatHeart_Bisexual.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/heart/QueerCatHeart_Bisexual.svg blobs/queercats/queercatheart_bisexual.png
	optipng -q blobs/queercats/queercatheart_bisexual.png

blobs/queercats/queercatheart_enby.png: ../submodules/QueerCats/SVG/heart/QueerCatHeart_Enby.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/heart/QueerCatHeart_Enby.svg blobs/queercats/queercatheart_enby.png
	optipng -q blobs/queercats/queercatheart_enby.png

blobs/queercats/queercatheart_genderfluid.png: ../submodules/QueerCats/SVG/heart/QueerCatHeart_Genderfluid.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/heart/QueerCatHeart_Genderfluid.svg blobs/queercats/queercatheart_genderfluid.png
	optipng -q blobs/queercats/queercatheart_genderfluid.png

blobs/queercats/queercatheart_genderqueer.png: ../submodules/QueerCats/SVG/heart/QueerCatHeart_Genderqueer.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/heart/QueerCatHeart_Genderqueer.svg blobs/queercats/queercatheart_genderqueer.png
	optipng -q blobs/queercats/queercatheart_genderqueer.png

blobs/queercats/queercatheart_intersex.png: ../submodules/QueerCats/SVG/heart/QueerCatHeart_Intersex.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/heart/QueerCatHeart_Intersex.svg blobs/queercats/queercatheart_intersex.png
	optipng -q blobs/queercats/queercatheart_intersex.png

blobs/queercats/queercatheart_lesbian.png: ../submodules/QueerCats/SVG/heart/QueerCatHeart_Lesbian.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/heart/QueerCatHeart_Lesbian.svg blobs/queercats/queercatheart_lesbian.png
	optipng -q blobs/queercats/queercatheart_lesbian.png

blobs/queercats/queercatheart_malehomosexual.png: ../submodules/QueerCats/SVG/heart/QueerCatHeart_MaleHomosexual.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/heart/QueerCatHeart_MaleHomosexual.svg blobs/queercats/queercatheart_malehomosexual.png
	optipng -q blobs/queercats/queercatheart_malehomosexual.png

blobs/queercats/queercatheart_pansexual.png: ../submodules/QueerCats/SVG/heart/QueerCatHeart_Pansexual.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/heart/QueerCatHeart_Pansexual.svg blobs/queercats/queercatheart_pansexual.png
	optipng -q blobs/queercats/queercatheart_pansexual.png

blobs/queercats/queercatheart_polyamory.png: ../submodules/QueerCats/SVG/heart/QueerCatHeart_Polyamory.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/heart/QueerCatHeart_Polyamory.svg blobs/queercats/queercatheart_polyamory.png
	optipng -q blobs/queercats/queercatheart_polyamory.png

blobs/queercats/queercatheart_polysexual.png: ../submodules/QueerCats/SVG/heart/QueerCatHeart_Polysexual.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/heart/QueerCatHeart_Polysexual.svg blobs/queercats/queercatheart_polysexual.png
	optipng -q blobs/queercats/queercatheart_polysexual.png

blobs/queercats/queercatheart_pride.png: ../submodules/QueerCats/SVG/heart/QueerCatHeart_Pride.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/heart/QueerCatHeart_Pride.svg blobs/queercats/queercatheart_pride.png
	optipng -q blobs/queercats/queercatheart_pride.png

blobs/queercats/queercatheart_sapphic.png: ../submodules/QueerCats/SVG/heart/QueerCatHeart_Sapphic.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/heart/QueerCatHeart_Sapphic.svg blobs/queercats/queercatheart_sapphic.png
	optipng -q blobs/queercats/queercatheart_sapphic.png

blobs/queercats/queercatheart_trans.png: ../submodules/QueerCats/SVG/heart/QueerCatHeart_Trans.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/SVG/heart/QueerCatHeart_Trans.svg blobs/queercats/queercatheart_trans.png
	optipng -q blobs/queercats/queercatheart_trans.png

blobs/queercats/queercatmorningcoffee_ace.png: ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Ace.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Ace.svg blobs/queercats/queercatmorningcoffee_ace.png
	optipng -q blobs/queercats/queercatmorningcoffee_ace.png

blobs/queercats/queercatmorningcoffee_agender.png: ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Agender.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Agender.svg blobs/queercats/queercatmorningcoffee_agender.png
	optipng -q blobs/queercats/queercatmorningcoffee_agender.png

blobs/queercats/queercatmorningcoffee_aromantic.png: ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Aromantic.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Aromantic.svg blobs/queercats/queercatmorningcoffee_aromantic.png
	optipng -q blobs/queercats/queercatmorningcoffee_aromantic.png

blobs/queercats/queercatmorningcoffee_austism.png: ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Austism.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Austism.svg blobs/queercats/queercatmorningcoffee_austism.png
	optipng -q blobs/queercats/queercatmorningcoffee_austism.png

blobs/queercats/queercatmorningcoffee_bisexual.png: ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Bisexual.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Bisexual.svg blobs/queercats/queercatmorningcoffee_bisexual.png
	optipng -q blobs/queercats/queercatmorningcoffee_bisexual.png

blobs/queercats/queercatmorningcoffee_blackTransgender.png: ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_BlackTransgender.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_BlackTransgender.svg blobs/queercats/queercatmorningcoffee_blackTransgender.png
	optipng -q blobs/queercats/queercatmorningcoffee_blackTransgender.png

blobs/queercats/queercatmorningcoffee_demiboy.png: ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Demiboy.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Demiboy.svg blobs/queercats/queercatmorningcoffee_demiboy.png
	optipng -q blobs/queercats/queercatmorningcoffee_demiboy.png

blobs/queercats/queercatmorningcoffee_demigirl.png: ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Demigirl.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Demigirl.svg blobs/queercats/queercatmorningcoffee_demigirl.png
	optipng -q blobs/queercats/queercatmorningcoffee_demigirl.png

blobs/queercats/queercatmorningcoffee_enby.png: ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Enby.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Enby.svg blobs/queercats/queercatmorningcoffee_enby.png
	optipng -q blobs/queercats/queercatmorningcoffee_enby.png

blobs/queercats/queercatmorningcoffee_genderfluid.png: ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Genderfluid.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Genderfluid.svg blobs/queercats/queercatmorningcoffee_genderfluid.png
	optipng -q blobs/queercats/queercatmorningcoffee_genderfluid.png

blobs/queercats/queercatmorningcoffee_genderqueer.png: ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Genderqueer.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Genderqueer.svg blobs/queercats/queercatmorningcoffee_genderqueer.png
	optipng -q blobs/queercats/queercatmorningcoffee_genderqueer.png

blobs/queercats/queercatmorningcoffee_intersex.png: ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Intersex.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Intersex.svg blobs/queercats/queercatmorningcoffee_intersex.png
	optipng -q blobs/queercats/queercatmorningcoffee_intersex.png

blobs/queercats/queercatmorningcoffee_lesbian.png: ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Lesbian.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Lesbian.svg blobs/queercats/queercatmorningcoffee_lesbian.png
	optipng -q blobs/queercats/queercatmorningcoffee_lesbian.png

blobs/queercats/queercatmorningcoffee_malehomosexual.png: ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_MaleHomosexual.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_MaleHomosexual.svg blobs/queercats/queercatmorningcoffee_malehomosexual.png
	optipng -q blobs/queercats/queercatmorningcoffee_malehomosexual.png

blobs/queercats/queercatmorningcoffee_pansexual.png: ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Pansexual.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Pansexual.svg blobs/queercats/queercatmorningcoffee_pansexual.png
	optipng -q blobs/queercats/queercatmorningcoffee_pansexual.png

blobs/queercats/queercatmorningcoffee_polyamory.png: ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Polyamory.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Polyamory.svg blobs/queercats/queercatmorningcoffee_polyamory.png
	optipng -q blobs/queercats/queercatmorningcoffee_polyamory.png

blobs/queercats/queercatmorningcoffee_polysexual.png: ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Polysexual.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Polysexual.svg blobs/queercats/queercatmorningcoffee_polysexual.png
	optipng -q blobs/queercats/queercatmorningcoffee_polysexual.png

blobs/queercats/queercatmorningcoffee_pride.png: ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Pride.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Pride.svg blobs/queercats/queercatmorningcoffee_pride.png
	optipng -q blobs/queercats/queercatmorningcoffee_pride.png

blobs/queercats/queercatmorningcoffee_progress.png: ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Progress.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Progress.svg blobs/queercats/queercatmorningcoffee_progress.png
	optipng -q blobs/queercats/queercatmorningcoffee_progress.png

blobs/queercats/queercatmorningcoffee_sapphic.png: ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Sapphic.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Sapphic.svg blobs/queercats/queercatmorningcoffee_sapphic.png
	optipng -q blobs/queercats/queercatmorningcoffee_sapphic.png

blobs/queercats/queercatmorningcoffee_transgender.png: ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Transgender.svg blobs/.queercats.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/MorningCoffee/SVG/QueerCatMorningCoffee_Transgender.svg blobs/queercats/queercatmorningcoffee_transgender.png
	optipng -q blobs/queercats/queercatmorningcoffee_transgender.png

# ------------------------------------ #

blobs.meta= \
  $(blobs/blobbluebird.meta) \
  $(blobs/blobcat.meta) \
  $(blobs/blobemoji.meta) \
  $(blobs/blobfox.meta) \
  $(blobs/cat_is_blob.meta) \
  $(blobs/meowmoji.meta) \
  $(blobs/queercats.meta)

blobs.meta: $(blobs.meta)

blobs.assets= \
  $(blobs/blobbluebird.assets) \
  $(blobs/blobcat.assets) \
  $(blobs/blobemoji.assets) \
  $(blobs/blobfox.assets) \
  $(blobs/cat_is_blob.assets) \
  $(blobs/meowmoji.assets) \
  $(blobs/queercats.assets)

blobs.assets: $(blobs.assets)

blobs.check: blobs/blobbluebird.check blobs/blobcat.check blobs/blobemoji.check blobs/blobfox.check blobs/cat_is_blob.check blobs/meowmoji.check blobs/queercats.check

blobs/%/meta.json: ../blobs/%/meta.json blobs/.%.pre
	.script/build_metadata.sh "$<" > "$@"

# ------------------------------------ #

.PHONY: \
  blobs blobs.clean blobs.meta blobs.assets blobs.check \
  blobs/blobbluebird blobs/blobbluebird.clean blobs/blobbluebird.meta blobs/blobbluebird.assets blobs/blobbluebird.check \
  blobs/blobcat blobs/blobcat.clean blobs/blobcat.meta blobs/blobcat.assets blobs/blobcat.check \
  blobs/blobemoji blobs/blobemoji.clean blobs/blobemoji.meta blobs/blobemoji.assets blobs/blobemoji.check \
  blobs/blobfox blobs/blobfox.clean blobs/blobfox.meta blobs/blobfox.assets blobs/blobfox.check \
  blobs/cat_is_blob blobs/cat_is_blob.clean blobs/cat_is_blob.meta blobs/cat_is_blob.assets blobs/cat_is_blob.check \
  blobs/meowmoji blobs/meowmoji.clean blobs/meowmoji.meta blobs/meowmoji.assets blobs/meowmoji.check \
  blobs/queercats blobs/queercats.clean blobs/queercats.meta blobs/queercats.assets blobs/queercats.check
