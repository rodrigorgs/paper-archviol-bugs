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
	open build/icse2015-archviol.pdf
