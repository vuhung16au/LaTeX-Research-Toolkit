# Makefile for Deep Learning 101 Book

.PHONY: help pdf clean

help:
	@echo "Deep Learning 101 Book - Build targets:"
	@echo "  make help  - Show this help"
	@echo "  make pdf   - Build the complete book PDF"
	@echo "  make clean - Remove build artifacts"

pdf: main.pdf

main.pdf: main.tex chapters/*.tex
	@echo "Building Deep Learning 101..."
	@echo "Pass 1: Initial compilation..."
	@pdflatex -interaction=nonstopmode -halt-on-error main.tex > /dev/null || (cat main.log && exit 1)
	@echo "Pass 2: Processing bibliography..."
	@biber main > /dev/null || true
	@echo "Pass 3: Processing glossary..."
	@makeglossaries main > /dev/null || true
	@echo "Pass 4: Processing index..."
	@makeindex main > /dev/null || true
	@echo "Pass 5: Resolving references..."
	@pdflatex -interaction=nonstopmode -halt-on-error main.tex > /dev/null || (cat main.log && exit 1)
	@echo "Pass 6: Final compilation..."
	@pdflatex -interaction=nonstopmode -halt-on-error main.tex > /dev/null || (cat main.log && exit 1)
	@echo "Book compiled successfully: main.pdf"

clean:
	rm -f *.aux *.log *.out *.toc *.bbl *.blg *.bcf *.run.xml *.synctex.gz
	rm -f *.idx *.ind *.ilg *.lot *.lof *.lol *.fdb_latexmk *.fls *.auxlock
	rm -f *.acn *.acr *.alg *.glg *.glo *.gls *.ist
	rm -f main.pdf
	rm -f chapters/*.aux
	@echo "Build artifacts cleaned"
