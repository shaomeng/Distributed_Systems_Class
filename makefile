all: main.pdf

main.pdf: *.tex *.bib */*.tex
	pdflatex main.tex
	bibtex main 
	touch main.tex
	pdflatex main.tex
	pdflatex main.tex

short: *.tex *.bib */*.tex
	pdflatex main.tex

clean:
	if (rm -f *.log *.aux *.bbl *.blg *.toc *.dvi *.ps *.brf *.lbl *pdf) then :; fi
