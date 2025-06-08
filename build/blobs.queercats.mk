.PHONY: blobs/queercats blobs/queercats.clean

blobs/queercats: \
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

blobs/queercats.clean:
	-rm -rf blobs/queercats/
	-rm blobs/.queercats.pre

blobs/.queercats.pre: .blobs.pre
	-mkdir -p blobs/queercats && \
	touch blobs/.queercats.pre

blobs/queercats/meta.json: ../blobs/queercats/meta.json blobs/.queercats.pre
	.script/build_metadata.sh ../blobs/queercats/meta.json > blobs/queercats/meta.json

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
