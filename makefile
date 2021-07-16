default:
	asciidoctor -D docs -a linkcss -a stylesheet=lab-style.css --backend=html5 ./labs/*.adoc
	find ./labs/images/ -type f -name \*.png -exec cp -R -r {} docs/ \;
	cp -r ./labs/manifest.json docs/
	ls docs/


clean:
	find ./docs/* ! -name "index.html" ! -name "lab-style.css" ! -name ".gitkeep" -exec rm {} \;