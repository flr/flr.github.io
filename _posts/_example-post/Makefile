RMD := $(basename $(wildcard *.Rmd))

all: knit

echo:
	echo $(RMD)

knit: $(RMD).Rmd
	R --vanilla --silent -e "require(knitr);" \
  -e "opts_knit[['set']](base.dir='../../figures/');" \
	-e "opts_knit[['set']](base.url='http://flr-project.org/');" \
	-e "fig.path <- paste0('figures/', '$(RMD)/');" \
	-e "opts_chunk[['set']](fig.path=fig.path);" \
	-e "render_jekyll();" \
	-e "knit(input='$(RMD).Rmd', output='../$(RMD).md', envir=parent.frame(), encoding='UTF-8')"

clean:
	rm figuress/*
	rm *.md
