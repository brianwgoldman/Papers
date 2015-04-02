all:
	latex main
	bibtex main
	latex main
	latex main
	dvips main
	ps2pdf14 -dPDFSETTINGS=/prepress main.ps

single: all
	mv main.pdf p1213-single.pdf

double:
	sed -e 's/baselinestretch\}{1/baselinestretch\}\{2/g' main.tex > temp.txt; mv temp.txt main.tex
	${MAKE} all
	sed -e 's/baselinestretch\}{2/baselinestretch\}\{1/g' main.tex > temp.txt; mv temp.txt main.tex
	mv main.pdf p1213-double.pdf

clean:
	rm -f *.log *.aux *.bbl *.blg *~ *.out

extra_clean: clean
	rm -f main.pdf main.dvi main.ps p1213-single.pdf p1213-double.pdf
