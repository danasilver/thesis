NAME = thesis

all: clean $(NAME).pdf

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

# find . -type f \( -name "*.js" -or -name "*.css" -or -name "*.jade" \) -not -path "./node_modules/*" -not -path "./git/*" -not -path "./static/bower_components/*" -not -path "./packages/*" -exec enscript --output - --columns 2 --landscape -Ejavascript --color --font Courier6 --line-numbers {} + | ps2pdf - > code.pdf
