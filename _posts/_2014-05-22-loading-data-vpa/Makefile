RMD := $(basename $(wildcard *.Rmd))

all: ../$(RMD).md


../$(RMD).md: $(RMD).Rmd
	R --vanilla --silent -e "require(knitr);" \
  -e "opts_knit[['set']](base.dir='../../figures/');" \
	-e "opts_knit[['set']](base.url='http://flr-project.org/');" \
	-e "fig.path <- paste0('$(RMD)/');" \
	-e "opts_chunk[['set']](fig.path=fig.path);" \
	-e "render_jekyll();" \
	-e "knit(input='$(RMD).Rmd', output='../$(RMD).md', encoding='UTF-8');" \
	-e "purl(input='$(RMD).Rmd', output='../../code/$(RMD)/$(RMD).R', encoding='UTF-8')"

dirs:
	ifeq "$(wildcard $(MY_DIRNAME) )" ""
		-mkdir $(MY_DIRNAME)
	endif
