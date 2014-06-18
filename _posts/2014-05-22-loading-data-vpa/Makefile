
RMD := 2014-05-22-loading-data-vpa.Rmd

all: knit

echo:
	echo $(basename $(RMD)).md

knit: $(RMD)
	R --vanilla --silent -e "require(knitr);" \
  -e "opts_knit[['set']](base.dir='../../figures/');" \
	-e "opts_knit[['set']](base.url='http://flr-project.org');" \
	-e "fig.path <- paste0(sub('.Rmd', '', '$(RMD)'), '/');" \
	-e "opts_chunk[['set']](fig.path=fig.path);" \
	-e "render_jekyll();" \
	-e "knit(input='$(RMD)', output='../$(basename $(RMD)).md', envir=parent.frame(), encoding='UTF-8')"

clean:
	rm figuress/*
	rm *.md
