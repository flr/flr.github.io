CSL=mycsl.csl

all: references.md

references.md: references_in.md references.bib
	pandoc references_in.md --bibliography references.bib --csl $(CSL) -o ../references.md
