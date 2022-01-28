# This version of the Makefile assumes that rst2pdf and its dependencies
# are installed.

# Using '-e preprocess' allows me to use '.. page::' for pagebreaks, and
# '.. space:: <number>' for space
RST2PDF=rst2pdf --break-level=1 -e preprocess
            #--fit-literal-mode=overflow \
            #--font-path /Library/Fonts/Microsoft \
            #--font-path /System/Library/Fonts \

.PHONY: default
default: html pdf

# We don't try to provide an HTML version of the slides
.PHONY: html
html:
	rst2html.py README.rst README.html
	rst2html.py ruby-slide-notes.rst ruby-slide-notes.html

.PHONY: pdf
pdf: slides notes

# For the notes we don't use the slide settings
.PHONY: notes
notes:
	rst2pdf ruby-slide-notes.rst -o ruby-slide-notes.pdf

.PHONY: slides
slides: make4x3 make16x9

.PHONY: make16x9
make16x9:
	$(RST2PDF) -s light16x9.style ruby-slides.rst -o ruby-slides-16x9.pdf

.PHONY: 16x9
16x9:   make16x9
	open ruby-slides-16x9.pdf

.PHONY: make4x3
make4x3:
	$(RST2PDF) -s light4x3.style ruby-slides.rst -o ruby-slides-4x3.pdf

.PHONY: 4x3
4x3:   make4x3
	open ruby-slides-4x3.pdf

.PHONY: clean
clean:
	rm -f *.html

.PHONY: distclean
distclean: clean
	rm -f *.pdf

.PHONY: help
help:
	@echo 'make           same as: make html pdf'
	@echo 'make pdf       make all the PDF files using rst2pdf'
	@echo 'make notes     make the PDF for the notes, not the slides'
	@echo 'make slides    just make ruby-slides-[4x3|16x9].pdf'
	@echo 'make 4x3       make and open ruby-slides-4x3.pdf'
	@echo 'make 16x9      make and open ruby-slides-16x9.pdf'
	@echo 'make html      make all the HTML files using rst2html'
	@echo 'make clean     delete HTML files'
	@echo 'make distclean delete PDF and HTML files
