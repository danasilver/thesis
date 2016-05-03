NAME = thesis

$(NAME).pdf: *.tex *.bib
	pdflatex $(NAME)
	bibtex $(NAME)
	pdflatex $(NAME)
	pdflatex $(NAME)

.PHONY: open
open:
	open $(NAME).pdf

.PHONY: clean
clean:
	rm -f *.{pdf,log,aux,dvi,bbl,blg,lot,lof}
