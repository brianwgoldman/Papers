all:
	latex main
	bibtex main
	latex main
	latex main
	dvipdf main
	dvips main

double:
	sed -e 's/%\\linespread/\\linespread/g' main.tex > temp.txt; mv temp.txt main.tex
	${MAKE} all
	sed -e 's/\\linespread/%\\linespread/g' main.tex > temp.txt; mv temp.txt main.tex

clean:
	rm -f *.log *.aux *.bbl *.blg *~

extra_clean: clean
	rm -f main.pdf main.dvi main.ps
