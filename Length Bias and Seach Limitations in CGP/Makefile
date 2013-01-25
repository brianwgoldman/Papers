all:
	latex main
	bibtex main
	latex main
	latex main
	dvipdf main
	dvips main

clean:
	rm -f *.log *.aux *.bbl *.blg *~

extra_clean: clean
	rm -f main.pdf main.dvi main.ps
