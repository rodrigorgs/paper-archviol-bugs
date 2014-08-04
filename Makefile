XDGOPEN := $(shell xdg-open --version 2> /dev/null)

all:
	pdflatex -output-directory=build icse2015-archviol
	cp *.bib *.bst build
	cd build; bibtex icse2015-archviol
	cd ..
	pwd
	pdflatex -output-directory=build icse2015-archviol
	pdflatex -output-directory=build icse2015-archviol
	# cp build/icse2015-archviol.pdf ..

clean:
	rm build/*

view:
ifdef XDGOPEN
	@xdg-open build/icse2015-archviol.pdf
else
	@open build/icse2015-archviol.pdf
endif

