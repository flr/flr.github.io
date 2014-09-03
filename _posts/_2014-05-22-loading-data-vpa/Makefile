RMD := $(basename $(wildcard *.Rmd))
ASSETS := ../../assets/$(RMD)/

all: ../$(RMD).md

../$(RMD).md: $(RMD).Rmd
	R --vanilla --silent -e "require(knitr);" \
  -e "opts_knit[['set']](base.dir='../../');" \
	-e "opts_knit[['set']](base.url='http://flr-project.org/');" \
	-e "fig.path <- paste0('assets/$(RMD)/figures/');" \
	-e "opts_chunk[['set']](fig.path=fig.path);" \
	-e "render_jekyll();" \
	-e "knit(input='$(RMD).Rmd', output='../$(RMD).md', encoding='UTF-8');" \
	-e "purl(input='$(RMD).Rmd', output='$(ASSETS)/$(RMD).R', encoding='UTF-8')"

test:
	echo $(ASSETS)
