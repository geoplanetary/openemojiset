.PHONY: prideflags prideflags.clean

prideflags: \
  prideflags/meta.json \
  prideflags/flag_ace.png \
  prideflags/flag_agender.png \
  prideflags/flag_aromantic.png \
  prideflags/flag_autism.png \
  prideflags/flag_bisexual.png \
  prideflags/flag_blacktrans.png \
  prideflags/flag_enby.png \
  prideflags/flag_genderfluid.png \
  prideflags/flag_genderqueer.png \
  prideflags/flag_intersex.png \
  prideflags/flag_lesbian.png \
  prideflags/flag_malehomosexual.png \
  prideflags/flag_pansexual.png \
  prideflags/flag_polyamory.png \
  prideflags/flag_polysexual.png \
  prideflags/flag_pride.png \
  prideflags/flag_progress.png \
  prideflags/flag_sapphic.png \
  prideflags/flag_trans.png \
  prideflags/heart_ace.png \
  prideflags/heart_agender.png \
  prideflags/heart_aromantic.png \
  prideflags/heart_autism.png \
  prideflags/heart_bisexual.png \
  prideflags/heart_blacktrans.png \
  prideflags/heart_enby.png \
  prideflags/heart_fuchsia.png \
  prideflags/heart_genderfluid.png \
  prideflags/heart_genderqueer.png \
  prideflags/heart_intersex.png \
  prideflags/heart_lesbian.png \
  prideflags/heart_malehomosexual.png \
  prideflags/heart_pansexual.png \
  prideflags/heart_polyamory.png \
  prideflags/heart_polysexual.png \
  prideflags/heart_pride.png \
  prideflags/heart_progress.png \
  prideflags/heart_sapphic.png \
  prideflags/heart_trans.png \
  prideflags/fire_ace.png \
  prideflags/fire_agender.png \
  prideflags/fire_aromantic.png \
  prideflags/fire_autism.png \
  prideflags/fire_bisexual.png \
  prideflags/fire_blacktrans.png \
  prideflags/fire_enby.png \
  prideflags/fire_genderfluid.png \
  prideflags/fire_genderqueer.png \
  prideflags/fire_intersex.png \
  prideflags/fire_lesbian.png \
  prideflags/fire_malehomosexual.png \
  prideflags/fire_pansexual.png \
  prideflags/fire_polyamory.png \
  prideflags/fire_polysexual.png \
  prideflags/fire_pride.png \
  prideflags/fire_progress.png \
  prideflags/fire_sapphic.png \
  prideflags/fire_trans.png

prideflags.clean:
	-rm -rf prideflags/
	-rm .prideflags.pre

.prideflags.pre: .blobs.pre
	mkdir -p prideflags
	touch .prideflags.pre

prideflags/meta.json: ../prideflags/meta.json .prideflags.pre
	.script/build_metadata.sh ../prideflags/meta.json > prideflags/meta.json

prideflags/flag_ace.png: ../submodules/QueerCats/Flag/SVG/Flag_Ace.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Flag/SVG/Flag_Ace.svg prideflags/flag_ace.png
	optipng -q prideflags/flag_ace.png

prideflags/flag_agender.png: ../submodules/QueerCats/Flag/SVG/Flag_Agender.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Flag/SVG/Flag_Agender.svg prideflags/flag_agender.png
	optipng -q prideflags/flag_agender.png

prideflags/flag_aromantic.png: ../submodules/QueerCats/Flag/SVG/Flag_Aromantic.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Flag/SVG/Flag_Aromantic.svg prideflags/flag_aromantic.png
	optipng -q prideflags/flag_aromantic.png

prideflags/flag_autism.png: ../submodules/QueerCats/Flag/SVG/Flag_Autism.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Flag/SVG/Flag_Autism.svg prideflags/flag_autism.png
	optipng -q prideflags/flag_autism.png

prideflags/flag_bisexual.png: ../submodules/QueerCats/Flag/SVG/Flag_Bisexual.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Flag/SVG/Flag_Bisexual.svg prideflags/flag_bisexual.png
	optipng -q prideflags/flag_bisexual.png

prideflags/flag_blacktrans.png: ../submodules/QueerCats/Flag/SVG/Flag_BlackTrans.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Flag/SVG/Flag_BlackTrans.svg prideflags/flag_blacktrans.png
	optipng -q prideflags/flag_blacktrans.png

prideflags/flag_enby.png: ../submodules/QueerCats/Flag/SVG/Flag_Enby.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Flag/SVG/Flag_Enby.svg prideflags/flag_enby.png
	optipng -q prideflags/flag_enby.png

prideflags/flag_genderfluid.png: ../submodules/QueerCats/Flag/SVG/Flag_Genderfluid.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Flag/SVG/Flag_Genderfluid.svg prideflags/flag_genderfluid.png
	optipng -q prideflags/flag_genderfluid.png

prideflags/flag_genderqueer.png: ../submodules/QueerCats/Flag/SVG/Flag_Genderqueer.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Flag/SVG/Flag_Genderqueer.svg prideflags/flag_genderqueer.png
	optipng -q prideflags/flag_genderqueer.png

prideflags/flag_intersex.png: ../submodules/QueerCats/Flag/SVG/Flag_Intersex.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Flag/SVG/Flag_Intersex.svg prideflags/flag_intersex.png
	optipng -q prideflags/flag_intersex.png

prideflags/flag_lesbian.png: ../submodules/QueerCats/Flag/SVG/Flag_Lesbian.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Flag/SVG/Flag_Lesbian.svg prideflags/flag_lesbian.png
	optipng -q prideflags/flag_lesbian.png

prideflags/flag_malehomosexual.png: ../submodules/QueerCats/Flag/SVG/Flag_MaleHomosexual.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Flag/SVG/Flag_MaleHomosexual.svg prideflags/flag_malehomosexual.png
	optipng -q prideflags/flag_malehomosexual.png

prideflags/flag_pansexual.png: ../submodules/QueerCats/Flag/SVG/Flag_Pansexual.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Flag/SVG/Flag_Pansexual.svg prideflags/flag_pansexual.png
	optipng -q prideflags/flag_pansexual.png

prideflags/flag_polyamory.png: ../submodules/QueerCats/Flag/SVG/Flag_Polyamory.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Flag/SVG/Flag_Polyamory.svg prideflags/flag_polyamory.png
	optipng -q prideflags/flag_polyamory.png

prideflags/flag_polysexual.png: ../submodules/QueerCats/Flag/SVG/Flag_Polysexual.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Flag/SVG/Flag_Polysexual.svg prideflags/flag_polysexual.png
	optipng -q prideflags/flag_polysexual.png

prideflags/flag_pride.png: ../submodules/QueerCats/Flag/SVG/Flag_Pride.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Flag/SVG/Flag_Pride.svg prideflags/flag_pride.png
	optipng -q prideflags/flag_pride.png

prideflags/flag_progress.png: ../submodules/QueerCats/Flag/SVG/Flag_Progress.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Flag/SVG/Flag_Progress.svg prideflags/flag_progress.png
	optipng -q prideflags/flag_progress.png

prideflags/flag_sapphic.png: ../submodules/QueerCats/Flag/SVG/Flag_Sapphic.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Flag/SVG/Flag_Sapphic.svg prideflags/flag_sapphic.png
	optipng -q prideflags/flag_sapphic.png

prideflags/flag_trans.png: ../submodules/QueerCats/Flag/SVG/Flag_Trans.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Flag/SVG/Flag_Trans.svg prideflags/flag_trans.png
	optipng -q prideflags/flag_trans.png

prideflags/heart_ace.png: ../submodules/QueerCats/Heart/SVG/Heart_Ace.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Heart/SVG/Heart_Ace.svg prideflags/heart_ace.png
	optipng -q prideflags/heart_ace.png

prideflags/heart_agender.png: ../submodules/QueerCats/Heart/SVG/Heart_Agender.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Heart/SVG/Heart_Agender.svg prideflags/heart_agender.png
	optipng -q prideflags/heart_agender.png

prideflags/heart_aromantic.png: ../submodules/QueerCats/Heart/SVG/Heart_Aromantic.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Heart/SVG/Heart_Aromantic.svg prideflags/heart_aromantic.png
	optipng -q prideflags/heart_aromantic.png

prideflags/heart_autism.png: ../submodules/QueerCats/Heart/SVG/Heart_Autism.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Heart/SVG/Heart_Autism.svg prideflags/heart_autism.png
	optipng -q prideflags/heart_autism.png

prideflags/heart_bisexual.png: ../submodules/QueerCats/Heart/SVG/Heart_Bisexual.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Heart/SVG/Heart_Bisexual.svg prideflags/heart_bisexual.png
	optipng -q prideflags/heart_bisexual.png

prideflags/heart_blacktrans.png: ../submodules/QueerCats/Heart/SVG/Heart_BlackTrans.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Heart/SVG/Heart_BlackTrans.svg prideflags/heart_blacktrans.png
	optipng -q prideflags/heart_blacktrans.png

prideflags/heart_enby.png: ../submodules/QueerCats/Heart/SVG/Heart_Enby.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Heart/SVG/Heart_Enby.svg prideflags/heart_enby.png
	optipng -q prideflags/heart_enby.png

prideflags/heart_fuchsia.png: ../submodules/QueerCats/Heart/SVG/Heart_Fuchsia.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Heart/SVG/Heart_Fuchsia.svg prideflags/heart_fuchsia.png
	optipng -q prideflags/heart_fuchsia.png

prideflags/heart_genderfluid.png: ../submodules/QueerCats/Heart/SVG/Heart_Genderfluid.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Heart/SVG/Heart_Genderfluid.svg prideflags/heart_genderfluid.png
	optipng -q prideflags/heart_genderfluid.png

prideflags/heart_genderqueer.png: ../submodules/QueerCats/Heart/SVG/Heart_Genderqueer.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Heart/SVG/Heart_Genderqueer.svg prideflags/heart_genderqueer.png
	optipng -q prideflags/heart_genderqueer.png

prideflags/heart_intersex.png: ../submodules/QueerCats/Heart/SVG/Heart_Intersex.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Heart/SVG/Heart_Intersex.svg prideflags/heart_intersex.png
	optipng -q prideflags/heart_intersex.png

prideflags/heart_lesbian.png: ../submodules/QueerCats/Heart/SVG/Heart_Lesbian.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Heart/SVG/Heart_Lesbian.svg prideflags/heart_lesbian.png
	optipng -q prideflags/heart_lesbian.png

prideflags/heart_malehomosexual.png: ../submodules/QueerCats/Heart/SVG/Heart_MaleHomosexual.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Heart/SVG/Heart_MaleHomosexual.svg prideflags/heart_malehomosexual.png
	optipng -q prideflags/heart_malehomosexual.png

prideflags/heart_pansexual.png: ../submodules/QueerCats/Heart/SVG/Heart_Pansexual.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Heart/SVG/Heart_Pansexual.svg prideflags/heart_pansexual.png
	optipng -q prideflags/heart_pansexual.png

prideflags/heart_polyamory.png: ../submodules/QueerCats/Heart/SVG/Heart_Polyamory.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Heart/SVG/Heart_Polyamory.svg prideflags/heart_polyamory.png
	optipng -q prideflags/heart_polyamory.png

prideflags/heart_polysexual.png: ../submodules/QueerCats/Heart/SVG/Heart_Polysexual.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Heart/SVG/Heart_Polysexual.svg prideflags/heart_polysexual.png
	optipng -q prideflags/heart_polysexual.png

prideflags/heart_pride.png: ../submodules/QueerCats/Heart/SVG/Heart_Pride.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Heart/SVG/Heart_Pride.svg prideflags/heart_pride.png
	optipng -q prideflags/heart_pride.png

prideflags/heart_progress.png: ../submodules/QueerCats/Heart/SVG/Heart_Progress.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Heart/SVG/Heart_Progress.svg prideflags/heart_progress.png
	optipng -q prideflags/heart_progress.png

prideflags/heart_sapphic.png: ../submodules/QueerCats/Heart/SVG/Heart_Sapphic.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Heart/SVG/Heart_Sapphic.svg prideflags/heart_sapphic.png
	optipng -q prideflags/heart_sapphic.png

prideflags/heart_trans.png: ../submodules/QueerCats/Heart/SVG/Heart_Trans.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Heart/SVG/Heart_Trans.svg prideflags/heart_trans.png
	optipng -q prideflags/heart_trans.png

prideflags/fire_ace.png: ../submodules/QueerCats/Fire/SVG/Fire_Ace.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Fire/SVG/Fire_Ace.svg prideflags/fire_ace.png
	optipng -q prideflags/fire_ace.png

prideflags/fire_agender.png: ../submodules/QueerCats/Fire/SVG/Fire_Agender.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Fire/SVG/Fire_Agender.svg prideflags/fire_agender.png
	optipng -q prideflags/fire_agender.png

prideflags/fire_aromantic.png: ../submodules/QueerCats/Fire/SVG/Fire_Aromantic.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Fire/SVG/Fire_Aromantic.svg prideflags/fire_aromantic.png
	optipng -q prideflags/fire_aromantic.png

prideflags/fire_autism.png: ../submodules/QueerCats/Fire/SVG/Fire_Autism.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Fire/SVG/Fire_Autism.svg prideflags/fire_autism.png
	optipng -q prideflags/fire_autism.png

prideflags/fire_bisexual.png: ../submodules/QueerCats/Fire/SVG/Fire_Bisexual.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Fire/SVG/Fire_Bisexual.svg prideflags/fire_bisexual.png
	optipng -q prideflags/fire_bisexual.png

prideflags/fire_blacktrans.png: ../submodules/QueerCats/Fire/SVG/Fire_BlackTrans.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Fire/SVG/Fire_BlackTrans.svg prideflags/fire_blacktrans.png
	optipng -q prideflags/fire_blacktrans.png

prideflags/fire_enby.png: ../submodules/QueerCats/Fire/SVG/Fire_Enby.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Fire/SVG/Fire_Enby.svg prideflags/fire_enby.png
	optipng -q prideflags/fire_enby.png

prideflags/fire_genderfluid.png: ../submodules/QueerCats/Fire/SVG/Fire_Genderfluid.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Fire/SVG/Fire_Genderfluid.svg prideflags/fire_genderfluid.png
	optipng -q prideflags/fire_genderfluid.png

prideflags/fire_genderqueer.png: ../submodules/QueerCats/Fire/SVG/Fire_Genderqueer.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Fire/SVG/Fire_Genderqueer.svg prideflags/fire_genderqueer.png
	optipng -q prideflags/fire_genderqueer.png

prideflags/fire_intersex.png: ../submodules/QueerCats/Fire/SVG/Fire_Intersex.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Fire/SVG/Fire_Intersex.svg prideflags/fire_intersex.png
	optipng -q prideflags/fire_intersex.png

prideflags/fire_lesbian.png: ../submodules/QueerCats/Fire/SVG/Fire_Lesbian.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Fire/SVG/Fire_Lesbian.svg prideflags/fire_lesbian.png
	optipng -q prideflags/fire_lesbian.png

prideflags/fire_malehomosexual.png: ../submodules/QueerCats/Fire/SVG/Fire_LesbianAlt.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Fire/SVG/Fire_LesbianAlt.svg prideflags/fire_malehomosexual.png
	optipng -q prideflags/fire_malehomosexual.png

prideflags/fire_pansexual.png: ../submodules/QueerCats/Fire/SVG/Fire_MaleHomosexual.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Fire/SVG/Fire_MaleHomosexual.svg prideflags/fire_pansexual.png
	optipng -q prideflags/fire_pansexual.png

prideflags/fire_polyamory.png: ../submodules/QueerCats/Fire/SVG/Fire_Pansexual.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Fire/SVG/Fire_Pansexual.svg prideflags/fire_polyamory.png
	optipng -q prideflags/fire_polyamory.png

prideflags/fire_polysexual.png: ../submodules/QueerCats/Fire/SVG/Fire_Polyamory.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Fire/SVG/Fire_Polyamory.svg prideflags/fire_polysexual.png
	optipng -q prideflags/fire_polysexual.png

prideflags/fire_pride.png: ../submodules/QueerCats/Fire/SVG/Fire_PolyamoryPrettier.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Fire/SVG/Fire_PolyamoryPrettier.svg prideflags/fire_pride.png
	optipng -q prideflags/fire_pride.png

prideflags/fire_progress.png: ../submodules/QueerCats/Fire/SVG/Fire_Pride.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Fire/SVG/Fire_Pride.svg prideflags/fire_progress.png
	optipng -q prideflags/fire_progress.png

prideflags/fire_sapphic.png: ../submodules/QueerCats/Fire/SVG/Fire_Sapphic.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Fire/SVG/Fire_Sapphic.svg prideflags/fire_sapphic.png
	optipng -q prideflags/fire_sapphic.png

prideflags/fire_trans.png: ../submodules/QueerCats/Fire/SVG/Fire_Trans.svg .prideflags.pre
	resvg -z 0.5 --dpi 384 ../submodules/QueerCats/Fire/SVG/Fire_Trans.svg prideflags/fire_trans.png
	optipng -q prideflags/fire_trans.png
