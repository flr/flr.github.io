
NEWS.html: NEWS.md
	sed '/^$$/d;G' NEWS.md | pandoc -o NEWS.html
	sed -i 's/p>/li>/g' NEWS.html
