MD:=$(patsubst %.Rmd,%.md,$(wildcard *.Rmd))

all: $(MD)

clean:
	rm -rf cache/

%.pdf: %.tex
	pdflatex $*.tex

%.tex: %.md
	pandoc -o $*.tex --template=$(TEMPLATE) $*.md
	sed -i 's/figure}.*/marginfigure}/' $*.tex
	./figure.sh

%.md: %.Rmd
	R -e "library(knitr)" \
		-e "knit('$*.Rmd', output='$*.md')"
