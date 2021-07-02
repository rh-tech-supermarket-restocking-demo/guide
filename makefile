default:
	asciidoctor -D docs -a linkcss -a stylesheet=lab-style.css --backend=html5 ./labs/*.adoc
	find labs/images/ -type f -name \*.png -exec cp -R -r -n {} docs/ \;
	cp -r labs/manifest.json docs/