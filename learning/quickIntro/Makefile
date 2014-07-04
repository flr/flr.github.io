MD:=$(patsubst %.Rmd,%.md,$(wildcard *.Rmd))

CACHE:=FALSE

all: $(MD)

%.md: %.Rmd
	R --vanilla --silent -e "require(knitr);" \
	-e "render_jekyll();" \
  -e "opts_knit[['set']](dev='png', cache=$(CACHE), tidy=TRUE, results='markup');" \
	-e "knit(input='$*.Rmd', output='$*.md', encoding='UTF-8');" \
	-e "purl(input='$*.Rmd', output='$*.R', encoding='UTF-8', documentation = 1)"

clean:
	rm -rf cache/
	rm -f $*.md
	rm -f $*.R

%.pdf: %.md
	pandoc -o $*.pdf $*.md
