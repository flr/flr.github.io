CSL=mycsl.csl

all: references.md

references.md: references_in.txt references.bib
	pandoc references_in.txt --bibliography references.bib --csl $(CSL) -o references.md
