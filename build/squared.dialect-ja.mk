.PHONY: squared/dialect-ja squared/dialect-ja.clean

squared/dialect-ja: squared/dialect-ja/meta.json squared/dialect-ja/squared_badly_hokkaido_dialect.png squared/dialect-ja/squared_cute_hokkaido_dialect.png squared/dialect-ja/squared_freeze_hokkaido_dialect.png squared/dialect-ja/squared_pushtomistake_hokkaido_dialect.png squared/dialect-ja/squared_threwaraythetrash_hokkaido_dialect.png

squared/dialect-ja.clean:
	-rm -rf squared/dialect-ja/
	-rm squared/.dialect-ja.pre

squared/.dialect-ja.pre: .squared.pre
	-mkdir -p squared/dialect-ja && \
	touch squared/.dialect-ja.pre

squared/dialect-ja/meta.json: squared/.dialect-ja.pre ../squared/dialect-ja/meta.json
	.script/build_metadata.sh ../squared/dialect-ja/meta.json > squared/dialect-ja/meta.json

squared/dialect-ja/squared_badly_hokkaido_dialect.png: squared/.dialect-ja.pre ../squared/dialect-ja/squared_badly_hokkaido_dialect.png
	cp ../squared/dialect-ja/squared_badly_hokkaido_dialect.png squared/dialect-ja/squared_badly_hokkaido_dialect.png && optipng -q squared/dialect-ja/squared_badly_hokkaido_dialect.png

squared/dialect-ja/squared_cute_hokkaido_dialect.png: squared/.dialect-ja.pre ../squared/dialect-ja/squared_cute_hokkaido_dialect.png
	cp ../squared/dialect-ja/squared_cute_hokkaido_dialect.png squared/dialect-ja/squared_cute_hokkaido_dialect.png && optipng -q squared/dialect-ja/squared_cute_hokkaido_dialect.png

squared/dialect-ja/squared_freeze_hokkaido_dialect.png: squared/.dialect-ja.pre ../squared/dialect-ja/squared_freeze_hokkaido_dialect.png
	cp ../squared/dialect-ja/squared_freeze_hokkaido_dialect.png squared/dialect-ja/squared_freeze_hokkaido_dialect.png && optipng -q squared/dialect-ja/squared_freeze_hokkaido_dialect.png

squared/dialect-ja/squared_pushtomistake_hokkaido_dialect.png: squared/.dialect-ja.pre ../squared/dialect-ja/squared_pushtomistake_hokkaido_dialect.png
	cp ../squared/dialect-ja/squared_pushtomistake_hokkaido_dialect.png squared/dialect-ja/squared_pushtomistake_hokkaido_dialect.png && optipng -q squared/dialect-ja/squared_pushtomistake_hokkaido_dialect.png

squared/dialect-ja/squared_threwaraythetrash_hokkaido_dialect.png: squared/.dialect-ja.pre ../squared/dialect-ja/squared_threwaraythetrash_hokkaido_dialect.png
	cp ../squared/dialect-ja/squared_threwaraythetrash_hokkaido_dialect.png squared/dialect-ja/squared_threwaraythetrash_hokkaido_dialect.png && optipng -q squared/dialect-ja/squared_threwaraythetrash_hokkaido_dialect.png
