

# copy all files from 'src' to 'build' and build there
build/ausarbeitung.dvi: src/ausarbeitung.tex src/bibliography.bib
	mkdir -p build 2>&1 > /dev/null; \
	cp src/* build; \
	cd build; \
	latex -interaction=nonstopmode ausarbeitung.tex; \
	biber ausarbeitung; \
	latex -interaction=nonstopmode ausarbeitung.tex

clean:
	rm -r build
