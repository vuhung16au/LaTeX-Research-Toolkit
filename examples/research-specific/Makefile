.PHONY: help pdf clean

TEXS := $(wildcard *.tex)
PDFS := $(TEXS:.tex=.pdf)

help:
	@echo "Research-specific examples targets:"
	@echo "  make help  - Show this help"
	@echo "  make pdf   - Compile all .tex files to .pdf"
	@echo "  make clean - Remove aux files and PDFs"

pdf: $(PDFS)

%.pdf: %.tex
	@echo "Compiling $< with pdflatex (multiple passes)"
	@pdflatex -interaction=nonstopmode -halt-on-error $< 2>/dev/null || true
	@pdflatex -interaction=nonstopmode -halt-on-error $< 2>/dev/null || true
	@pdflatex -interaction=nonstopmode -halt-on-error $<

clean:
	rm -f *.aux *.log *.out *.toc *.bbl *.blg *.synctex.gz *.nav *.snm *.vrb *.idx *.ind *.ilg *.lot *.lof *.lol *.fdb_latexmk *.fls *.auxlock
	rm -f $(PDFS)
