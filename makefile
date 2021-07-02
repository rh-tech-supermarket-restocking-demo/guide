default:
	asciidoctor -D docs -a linkcss -a stylesheet=lab-style.css --backend=html5 ./labs/*.adoc
	cp -R -r ./labs/images/* docs/
	cp -r ./labs/manifest.json docs/