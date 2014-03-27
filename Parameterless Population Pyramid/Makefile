all:
	latex main
	bibtex main
	latex main
	latex main
	dvipdf main
	dvips main
	cp main.tex pap632-goldman.tex
	mv main.ps pap632-goldman.ps
	mv main.pdf pap632-goldman.pdf

double:
	sed -e 's/%\\linespread/\\linespread/g' main.tex > temp.txt; mv temp.txt main.tex
	${MAKE} all
	sed -e 's/\\linespread/%\\linespread/g' main.tex > temp.txt; mv temp.txt main.tex

clean:
	rm -f *.log *.aux *.bbl *.blg *~ pap632-goldman.tex

extra_clean: clean
	rm -f pap632-goldman.pdf main.dvi pap632-goldman.ps
