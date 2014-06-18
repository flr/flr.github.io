
RMD := 2014-05-22-loading-data-vpa.Rmd

all: knit

knit: $(RMD)
	R --vanilla --silent -e "require(knitr);" \
	-e "opts_chunk[['set']](base.url='http://flr-project.org/');" \
	-e "fig.path <- paste0('figures/', sub('.Rmd', '', '$(RMD)'), '/');" \
	-e "opts_chunk[['set']](fig.path=fig.path);" \
	-e "render_jekyll();" \
	-e "knit(input='$(RMD)', output='../2014-05-22-loading-data-vpa.md', envir=parent.frame(), encoding='UTF-8')"
	sed -i 's/figures/{{ site.url }}\/figures\//' ../2014-05-22-loading-data-vpa.md

clean:
	rm figs/*
	rm *.md
