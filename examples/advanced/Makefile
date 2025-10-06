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
	@echo "Compiling $<"
	@pdflatex -interaction=nonstopmode -halt-on-error -shell-escape $< >/dev/null
	@pdflatex -interaction=nonstopmode -halt-on-error -shell-escape $< >/dev/null

clean:
	rm -f *.aux *.log *.out *.toc *.bbl *.blg *.synctex.gz *.nav *.snm *.vrb *.idx *.ind *.ilg *.lot *.lof *.lol *.fdb_latexmk *.fls *.auxlock
	rm -f $(PDFS)
	rm -rf _minted
