
NEWS.html: NEWS.md
	sed 10q NEWS.md | sed '/^$$/d;G' | pandoc -o NEWS.html
	sed -i 's/p>/li>/g' NEWS.html
