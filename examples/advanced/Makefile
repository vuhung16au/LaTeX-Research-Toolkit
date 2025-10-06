.PHONY: help pdf clean

TEXS := $(filter-out subsection_%.tex,$(wildcard *.tex))
PDFS := $(TEXS:.tex=.pdf)

help:
	@echo "Advanced examples targets:"
	@echo "  make help  - Show this help"
	@echo "  make pdf   - Compile all .tex files to .pdf"
	@echo "  make clean - Remove aux files and PDFs"

pdf: $(PDFS)

%.pdf: %.tex
	@echo "Compiling $< with latexmk (multiple passes)"
	@latexmk -pdf -interaction=nonstopmode -halt-on-error -shell-escape -quiet $<

clean:
	rm -f *.aux *.log *.out *.toc *.bbl *.blg *.synctex.gz *.nav *.snm *.vrb *.idx *.ind *.ilg *.lot *.lof *.lol *.fdb_latexmk *.fls *.auxlock
	rm -f $(PDFS)
	rm -rf _minted
