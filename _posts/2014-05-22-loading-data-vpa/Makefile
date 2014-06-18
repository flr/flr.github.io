
Rmd_FILES := $(wildcard *.Rmd)

all: knit

knit: $(Rmd_FILES)
	R --vanilla --silent -e "require(knitr);" \
	-e "fig.path <- paste0('2014-05-22-loading-data-vpa/figure/');" \
	-e "opts_chunk[['set']](fig.path=fig.path);" \
	-e "render_jekyll();" \
	-e "knit('$(Rmd_FILES)', envir=parent.frame())"

clean:
	rm figs/*
	rm *.md
