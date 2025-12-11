# Makefile for Deep Learning 101 Book

# Include parent common configuration
include ../../../../config/common.mk

.PHONY: help pdf pdf-a4 pdf-a5 all clean

# Default target
help:
	@echo "Deep Learning 101 Book - Build targets:"
	@echo "  make help    - Show this help"
	@echo "  make pdf     - Build the complete book PDF (A5 paper)"
	@echo "  make pdf-a4  - Build the complete book PDF (A4 paper)"
	@echo "  make pdf-a5  - Build the complete book PDF (A5 paper)"
	@echo "  make all     - Clean and build both A4 and A5 versions"
	@echo "  make clean   - Remove build artifacts"

# Default PDF target (A5)
pdf: pdf-a5

# A4 paper version
pdf-a4: main-a4.pdf

main-a4.pdf: main.tex chapters/*.tex
	@echo "Building Deep Learning 101 (A4 paper)..."
	@echo "Pass 1: Initial compilation..."
	@pdflatex -interaction=nonstopmode -halt-on-error -jobname=main-a4 "\def\papersize{a4paper}\input{main.tex}" > /dev/null || (cat main-a4.log && exit 1)
	@echo "Pass 2: Processing bibliography..."
	@if [ -f main-a4.bcf ] && [ -n "$(HAS_BIBER)" ]; then \
		biber main-a4 > /dev/null; \
	elif [ -f main-a4.aux ]; then \
		echo "  Biber not available, using bibtex instead..."; \
		bibtex main-a4 > /dev/null || echo "  Warning: Bibliography processing failed"; \
	else \
		echo "  No bibliography file found"; \
	fi
	@echo "Pass 3: Processing glossary..."
	@if [ -f main-a4.glo ] && [ -n "$(HAS_MAKEGLOSSARIES)" ]; then \
		makeglossaries main-a4 > /dev/null; \
	else \
		echo "  Glossary processing skipped (makeglossaries not available or no glossary)"; \
	fi
	@echo "Pass 4: Processing index..."
	@if [ -f main-a4.idx ]; then \
		makeindex main-a4 > /dev/null || echo "  Warning: Index processing failed"; \
	else \
		echo "  No index file found"; \
	fi
	@echo "Pass 5: Resolving references..."
	@pdflatex -interaction=nonstopmode -halt-on-error -jobname=main-a4 "\def\papersize{a4paper}\input{main.tex}" > /dev/null || (cat main-a4.log && exit 1)
	@echo "Pass 6: Final compilation..."
	@pdflatex -interaction=nonstopmode -halt-on-error -jobname=main-a4 "\def\papersize{a4paper}\input{main.tex}" > /dev/null || (cat main-a4.log && exit 1)
	@echo "Book compiled successfully: main-a4.pdf"

# A5 paper version
pdf-a5: main-a5.pdf

main-a5.pdf: main.tex chapters/*.tex
	@echo "Building Deep Learning 101 (A5 paper)..."
	@echo "Pass 1: Initial compilation..."
	@pdflatex -interaction=nonstopmode -halt-on-error -jobname=main-a5 "\def\papersize{a5paper}\input{main.tex}" > /dev/null || (cat main-a5.log && exit 1)
	@echo "Pass 2: Processing bibliography..."
	@if [ -f main-a5.bcf ] && [ -n "$(HAS_BIBER)" ]; then \
		biber main-a5 > /dev/null; \
	elif [ -f main-a5.aux ]; then \
		echo "  Biber not available, using bibtex instead..."; \
		bibtex main-a5 > /dev/null || echo "  Warning: Bibliography processing failed"; \
	else \
		echo "  No bibliography file found"; \
	fi
	@echo "Pass 3: Processing glossary..."
	@if [ -f main-a5.glo ] && [ -n "$(HAS_MAKEGLOSSARIES)" ]; then \
		makeglossaries main-a5 > /dev/null; \
	else \
		echo "  Glossary processing skipped (makeglossaries not available or no glossary)"; \
	fi
	@echo "Pass 4: Processing index..."
	@if [ -f main-a5.idx ]; then \
		makeindex main-a5 > /dev/null || echo "  Warning: Index processing failed"; \
	else \
		echo "  No index file found"; \
	fi
	@echo "Pass 5: Resolving references..."
	@pdflatex -interaction=nonstopmode -halt-on-error -jobname=main-a5 "\def\papersize{a5paper}\input{main.tex}" > /dev/null || (cat main-a5.log && exit 1)
	@echo "Pass 6: Final compilation..."
	@pdflatex -interaction=nonstopmode -halt-on-error -jobname=main-a5 "\def\papersize{a5paper}\input{main.tex}" > /dev/null || (cat main-a5.log && exit 1)
	@echo "Book compiled successfully: main-a5.pdf"

# Build both versions
all: clean pdf-a4 pdf-a5
	@echo "All versions built successfully!"

clean:
	rm -f *.aux *.log *.out *.toc *.bbl *.blg *.bcf *.run.xml *.synctex.gz
	rm -f *.idx *.ind *.ilg *.lot *.lof *.lol *.fdb_latexmk *.fls *.auxlock
	rm -f *.acn *.acr *.alg *.glg *.glo *.gls *.ist
	rm -f main.pdf main-a4.pdf main-a5.pdf
	rm -f main-a4.* main-a5.*
	rm -f chapters/*.aux
	@echo "Build artifacts cleaned"
