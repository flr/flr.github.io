# Makefile for converting all documents
# 
# Copyright 2014 FLR Team. Distributed under the GPL 2 or later
# Maintainer: Iago Mosqueira, JRC

DOCS = $(wildcard */)
NAME = myNewTutorial
     
.PHONY: docs $(DOCS)

docs: $(DOCS)
$(DOCS):
	$(MAKE) --directory=$@ $(TARGET)

new:
	cp -r _template $(NAME)
	mv $(NAME)/template.Rmd $(NAME)/$(NAME).Rmd


