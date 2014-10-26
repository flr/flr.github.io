RMD := $(basename $(wildcard *.Rmd))
ASSETS := assets/$(RMD)

all: ../$(RMD).md

../$(RMD).md: $(RMD).Rmd
	R --vanilla --silent -e "library(knitr);" \
  	-e "opts_knit[['set']](base.dir='../../');" \
		-e "opts_knit[['set']](base.url='http://flr-project.org/');" \
		-e "fig.path <- paste0('$(ASSETS)/figures/');" \
		-e "opts_chunk[['set']](fig.path=fig.path);" \
		-e "render_jekyll();" \
		-e "knit(input='$(RMD).Rmd', output='../$(RMD).md', encoding='UTF-8');" \
		-e "purl(input='$(RMD).Rmd', output='../../$(ASSETS)/$(RMD).R', encoding='UTF-8')"

.PHONY: pdf

pdf: mvpdf clean

mvpdf: $(RMD).pdf
	mv $(RMD).pdf ../../$(ASSETS)/

$(RMD).md: $(RMD).Rmd
	R --vanilla --silent -e "library(knitr);" \
  	-e "opts_knit[['set']](base.dir='./');" \
		-e "fig.path <- paste0('./figures/');" \
		-e "opts_chunk[['set']](fig.path=fig.path);" \
		-e "render_jekyll();" \
		-e "knit(input='$(RMD).Rmd', output='$(RMD).md', encoding='UTF-8');" \

$(RMD).pdf: $(RMD).md
	pandoc $(RMD).md -o $(RMD).pdf

.PHONY: clean

clean:
	rm -f $(RMD).md
	rm -rf ./figures
	rm -rf ./assets
