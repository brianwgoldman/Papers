all:
	latex main
	bibtex main
	latex main
	latex main
	dvips main
	ps2pdf14 -dPDFSETTINGS=/prepress main.ps

double:
	sed -e 's/%\\linespread/\\linespread/g' main.tex > temp.txt; mv temp.txt main.tex
	${MAKE} all
	sed -e 's/\\linespread/%\\linespread/g' main.tex > temp.txt; mv temp.txt main.tex

clean:
	rm -f *.log *.aux *.bbl *.blg *~ main.lof main.lot main.toc

extra_clean: clean
	rm -f main.pdf main.dvi main.ps
