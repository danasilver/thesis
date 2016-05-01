NAME = thesis

$(NAME).pdf: $(NAME).tex $(NAME).bib
	pdflatex $(NAME)
	pdflatex $(NAME)
	bibtex $(NAME)
	pdflatex $(NAME)

.PHONY: open
open:
	open $(NAME).pdf

.PHONY: clean
clean:
	rm -f $(NAME).{pdf,log,aux,dvi,bbl,blg,lot,lof}
