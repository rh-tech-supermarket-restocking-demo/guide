docs:
	mkdir -p ./docs
	cp ./config/index.html ./docs
	asciidoctor -D docs -a linkcss -a stylesheet=.config/style.css --backend=html5 ./labs/*.adoc
	find ./labs/images/ -type f -name \*.png -exec cp -R -r {} docs/ \;
	cp -r ./labs/manifest.json docs/
	ls docs/

clean:
	rm -rf ./docs