
Rmd_FILES := $(wildcard *.Rmd)

all: knit

knit: $(Rmd_FILES)
	R --vanilla --silent -e "require(knitr);" \
	-e "fig.path <- paste0('figure/');" \
	-e "opts_chunk[['set']](fig.path=fig.path);" \
	-e "render_jekyll();" \
	-e "knit(input='$(Rmd_FILES)', output='../2014-05-22-loading-data-vpa.md', envir=parent.frame(), encoding='UTF-8')"

clean:
	rm figs/*
	rm *.md
