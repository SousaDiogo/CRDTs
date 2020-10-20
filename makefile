.PHONY : latex

full: latex_with_bib clean read

fast: latex read

latex:
	pdflatex main.tex

latex_with_bib:
	pdflatex main.tex
	bibtex main.aux
	pdflatex main.tex
	pdflatex main.tex

clean_fast:
	rm -f main.log main.aux main.out

clean: clean_fast
	rm -f main.bbl main.blg

read:
	evince main.pdf &
