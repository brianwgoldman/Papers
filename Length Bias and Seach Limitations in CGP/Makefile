all:
	latex main
	bibtex main
	latex main
	latex main
	dvipdf main
	dvips main
	cp main.pdf t11pap138-goldman.pdf
	cp main.tex t11pap138-goldman.tex
	cp main.ps t11pap138-goldman.ps

double:
	sed -e 's/%\\linespread/\\linespread/g' main.tex > temp.txt; mv temp.txt main.tex
	${MAKE} all
	sed -e 's/\\linespread/%\\linespread/g' main.tex > temp.txt; mv temp.txt main.tex

clean:
	rm -f *.log *.aux *.bbl *.blg *~

extra_clean: clean
	rm -f main.pdf main.dvi main.ps
