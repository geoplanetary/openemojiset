.PHONY: squared/かわいい-ja squared/かわいい-ja.clean

squared/かわいい-ja: squared/かわいい-ja/meta.json squared/かわいい-ja/squared_cuteeverything.png squared/かわいい-ja/squared_cutemydaughter.png squared/かわいい-ja/squared_cuteothersdaughter.png squared/かわいい-ja/squared_cutethis.png

squared/かわいい-ja.clean:
	-rm -rf squared/かわいい-ja/
	-rm squared/.かわいい-ja.pre

squared/.かわいい-ja.pre: .squared.pre
	-mkdir -p squared/かわいい-ja && \
	touch squared/.かわいい-ja.pre

squared/かわいい-ja/meta.json: squared/.かわいい-ja.pre ../squared/かわいい-ja/meta.json
	.script/build_metadata.sh ../squared/かわいい-ja/meta.json > squared/かわいい-ja/meta.json

squared/かわいい-ja/squared_cuteeverything.png: squared/.かわいい-ja.pre ../squared/かわいい-ja/squared_cuteeverything.png
	cp ../squared/かわいい-ja/squared_cuteeverything.png squared/かわいい-ja/squared_cuteeverything.png && optipng -q squared/かわいい-ja/squared_cuteeverything.png

squared/かわいい-ja/squared_cutemydaughter.png: squared/.かわいい-ja.pre ../squared/かわいい-ja/squared_cutemydaughter.png
	cp ../squared/かわいい-ja/squared_cutemydaughter.png squared/かわいい-ja/squared_cutemydaughter.png && optipng -q squared/かわいい-ja/squared_cutemydaughter.png

squared/かわいい-ja/squared_cuteothersdaughter.png: squared/.かわいい-ja.pre ../squared/かわいい-ja/squared_cuteothersdaughter.png
	cp ../squared/かわいい-ja/squared_cuteothersdaughter.png squared/かわいい-ja/squared_cuteothersdaughter.png && optipng -q squared/かわいい-ja/squared_cuteothersdaughter.png

squared/かわいい-ja/squared_cutethis.png: squared/.かわいい-ja.pre ../squared/かわいい-ja/squared_cutethis.png
	cp ../squared/かわいい-ja/squared_cutethis.png squared/かわいい-ja/squared_cutethis.png && optipng -q squared/かわいい-ja/squared_cutethis.png
