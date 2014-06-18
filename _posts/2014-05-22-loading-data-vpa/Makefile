
RMD := 2014-05-22-loading-data-vpa.Rmd

all: knit

knit: $(RMD)
	R --vanilla --silent -e "require(knitr);" \
  -e "opts_knit[['set']](base.dir='../../figures/');" \
	-e "opts_knit[['set']](base.url='http://flr-project.org');" \
	-e "fig.path <- paste0(sub('.Rmd', '', '$(RMD)'), '/');" \
	-e "opts_chunk[['set']](fig.path=fig.path);" \
	-e "render_jekyll();" \
	-e "knit(input='$(RMD)', output='../2014-05-22-loading-data-vpa.md', envir=parent.frame(), encoding='UTF-8')"

fixpath:
	sed -i 's/figures/{{ site.url }}\/figures\//' ../2014-05-22-loading-data-vpa.md

mvfigs:
	mv -f figures/2014-05-22-loading-data-vpa/* ../../figures/2014-05-22-loading-data-vpa/

clean:
	rm figuress/*
	rm *.md
