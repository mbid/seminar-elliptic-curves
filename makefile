
# copy all files from 'src' to 'build' and build there
build/ausarbeitung.dvi: src/ausarbeitung.tex src/bibliography.bib
	mkdir -p build 2>&1 > /dev/null; \
	cp src/* build; \
	cd build; \
	rubber --force ausarbeitung > /dev/null; \
	biber --quiet ausarbeitung; \
	rubber --force ausarbeitung 2>&1;

clean:
	rm -r build
