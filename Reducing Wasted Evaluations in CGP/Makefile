all:
	latex main
	bibtex main
	latex main
	latex main
	dvipdf main
	dvips main

clean:
	rm -f *.log *.aux *.blg *~

extra_clean: clean
	rm -f main.pdf main.dvi main.ps goldman.zip
	rm -rf goldman/
