.PHONY: squared/general-ja squared/general-ja.clean

squared/general-ja: squared/general-ja/meta.json squared/general-ja/squared_didextravagance.png squared/general-ja/squared_drinkthemall.png squared/general-ja/squared_eatthemall.png squared/general-ja/squared_iamacatbutiknow.png squared/general-ja/squared_idontknowbecauseiamacat.png squared/general-ja/squared_pettingthemall.png

squared/general-ja.clean:
	-rm -rf squared/general-ja/
	-rm squared/.general-ja.pre

squared/.general-ja.pre: .squared.pre
	-mkdir -p squared/general-ja && \
	touch squared/.general-ja.pre

squared/general-ja/meta.json: squared/.general-ja.pre ../squared/general-ja/meta.json
	.script/build_metadata.sh ../squared/general-ja/meta.json > squared/general-ja/meta.json

squared/general-ja/squared_didextravagance.png: squared/.general-ja.pre ../squared/general-ja/squared_didextravagance.png
	cp ../squared/general-ja/squared_didextravagance.png squared/general-ja/squared_didextravagance.png && optipng -q squared/general-ja/squared_didextravagance.png

squared/general-ja/squared_drinkthemall.png: squared/.general-ja.pre ../squared/general-ja/squared_drinkthemall.png
	cp ../squared/general-ja/squared_drinkthemall.png squared/general-ja/squared_drinkthemall.png && optipng -q squared/general-ja/squared_drinkthemall.png

squared/general-ja/squared_eatthemall.png: squared/.general-ja.pre ../squared/general-ja/squared_eatthemall.png
	cp ../squared/general-ja/squared_eatthemall.png squared/general-ja/squared_eatthemall.png && optipng -q squared/general-ja/squared_eatthemall.png

squared/general-ja/squared_iamacatbutiknow.png: squared/.general-ja.pre ../squared/general-ja/squared_iamacatbutiknow.png
	cp ../squared/general-ja/squared_iamacatbutiknow.png squared/general-ja/squared_iamacatbutiknow.png && optipng -q squared/general-ja/squared_iamacatbutiknow.png

squared/general-ja/squared_idontknowbecauseiamacat.png: squared/.general-ja.pre ../squared/general-ja/squared_idontknowbecauseiamacat.png
	cp ../squared/general-ja/squared_idontknowbecauseiamacat.png squared/general-ja/squared_idontknowbecauseiamacat.png && optipng -q squared/general-ja/squared_idontknowbecauseiamacat.png

squared/general-ja/squared_pettingthemall.png: squared/.general-ja.pre ../squared/general-ja/squared_pettingthemall.png
	cp ../squared/general-ja/squared_pettingthemall.png squared/general-ja/squared_pettingthemall.png && optipng -q squared/general-ja/squared_pettingthemall.png
