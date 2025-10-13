# Makefile for TikZ and PGFPlots Showcase
# This Makefile provides targets for building and cleaning the LaTeX presentation

# Variables
TEX_FILE = tikz-pgfplots.tex
PDF_FILE = tikz-pgfplots.pdf
AUX_FILES = *.aux *.log *.nav *.out *.snm *.toc *.vrb *.fls *.fdb_latexmk *.synctex.gz

# Default target
all: pdf

# Build PDF
pdf: $(PDF_FILE)

$(PDF_FILE): $(TEX_FILE)
	@echo "Building TikZ and PGFPlots showcase..."
	pdflatex -interaction=nonstopmode $(TEX_FILE)
	pdflatex -interaction=nonstopmode $(TEX_FILE)
	@echo "PDF generated successfully: $(PDF_FILE)"

# Clean auxiliary files
clean:
	@echo "Cleaning auxiliary files..."
	rm -f $(AUX_FILES)
	@echo "Clean completed"

# Clean everything including PDF
distclean: clean
	@echo "Cleaning all generated files..."
	rm -f $(PDF_FILE)
	@echo "Distclean completed"

# Force rebuild
rebuild: clean pdf

# Help target
help:
	@echo "Available targets:"
	@echo "  pdf       - Build the PDF presentation (default)"
	@echo "  clean     - Remove auxiliary files"
	@echo "  distclean - Remove all generated files including PDF"
	@echo "  rebuild   - Clean and rebuild PDF"
	@echo "  help      - Show this help message"

# Phony targets
.PHONY: all pdf clean distclean rebuild help
