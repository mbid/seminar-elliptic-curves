
# copy all files from 'src' to 'build' and build there
.SILENT: build/ausarbeitung.pdf
build/ausarbeitung.pdf: src/ausarbeitung.tex src/bibliography.bib
	mkdir -p build 2>&1 > /dev/null; \
	cp src/* build; \
	cd build; \
	rubber --force --pdf ausarbeitung > /dev/null; \
	biber --quiet ausarbeitung; \
	rubber --force --pdf ausarbeitung 2>&1;

clean:
	rm -r build
