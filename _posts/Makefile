TITLE ?= $(shell bash -c 'read -p "Post title (hyphenated): " title; echo $$title')

CTITLE := `echo $(TITLE) |sed -e "s/ /-/g"`

DATE := `date +%Y-%m-%d`

NAME := $(DATE)-$(CTITLE)

new:
	cp -r _example-post _$(NAME)
	mv _$(NAME)/example-post.Rmd _$(NAME)/$(NAME).Rmd
	mkdir ../assets/$(NAME)
