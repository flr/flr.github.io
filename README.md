
# STRUCTURE
.
|-- about
|		`-- index.md
|-- assests
|		`-- 2014-01-01-Post
|			`-- 2014-01-01-Post.R
|-- gallery
|		`-- index.md
|-- _posts
|   |-- 2014-01-01-Post
|   |   |-- 2014-01-01-Post.Rmd
|   |   `-- Makefile
|   `-- 2014-01-01-Post.md
|-- learning
|   `-- quickIntro
`-- pkgs
		`-- index.md

# WORKFLOWS

## New post in /gallery

- cp -r _posts/_example-post _posts/`date +%F`-POST-NAME
- mv _posts/`date +%F`-POST-NAME/example-post.Rmd _posts/`date +%F`-POST-NAME/`date +%F`-POST-NAME.Rmd
- WRITE post as Rmd file
- make

* Using this idea (#2) <http://joshbranchaud.com/blog/2013/03/02/Running-Your-Jekyll-Blog-from-a-Subdirectory.html>

# REFERENCES

- Liquid, <https://github.com/Shopify/liquid/wiki/Liquid-for-Designers>
