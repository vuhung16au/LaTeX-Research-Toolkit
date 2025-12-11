# Include parent common configuration
include ../../config/common.mk

.PHONY: help pdf clean algorithms binarytree bibliographyexample customcommands figureplacement triovisual pgfplotsshowcase gif mp4 frames clean-anim

TEXS := $(wildcard *.tex)
PDFS := $(TEXS:.tex=.pdf)

help:
	@echo "Intermediate examples targets:"
	@echo "  make help                 - Show this help"
	@echo "  make pdf                  - Compile all .tex files to .pdf"
	@echo "  make clean                - Remove aux files and PDFs"
	@echo ""
	@echo "Individual file targets:"
	@echo "  make algorithms           - Compile algorithms.tex"
	@echo "  make binarytree           - Compile binary-tree.tex"
	@echo "  make bibliographyexample  - Compile bibliography-example.tex"
	@echo "  make customcommands       - Compile custom-commands.tex"
	@echo "  make figureplacement      - Compile figure-placement.tex"
	@echo "  make triovisual           - Compile trio-visual.tex"
	@echo "  make pgfplotsshowcase     - Compile pgfplots-showcase.tex"
	@echo ""
	@echo "Animation targets (for trio-visual):"
	@echo "  make gif                  - Create trio-visual.gif"
	@echo "  make mp4                  - Create trio-visual.mp4"
	@echo "  make frames               - Extract PNG frames"
	@echo "  make clean-anim             - Remove animation files"

pdf: $(PDFS)

# Individual targets
algorithms: algorithms.pdf
binarytree: binary-tree.pdf
bibliographyexample: bibliography-example.pdf
customcommands: custom-commands.pdf
figureplacement: figure-placement.pdf
triovisual: trio-visual.pdf
pgfplotsshowcase: pgfplots-showcase.pdf

%.pdf: %.tex
	@echo "Compiling $< with pdflatex (multiple passes)"
	@pdflatex -interaction=nonstopmode -halt-on-error $< 2>/dev/null || true
	@pdflatex -interaction=nonstopmode -halt-on-error $< 2>/dev/null || true
	@pdflatex -interaction=nonstopmode -halt-on-error $<

clean:
	rm -f *.aux *.log *.out *.toc *.bbl *.blg *.synctex.gz *.nav *.snm *.vrb *.idx *.ind *.ilg *.lot *.lof *.lol *.fdb_latexmk *.fls *.auxlock
	rm -f $(PDFS)

# Animation targets for trio-visual
gif: trio-visual.pdf
	@if [ -n "$(HAS_CONVERT)" ]; then \
		echo "Converting PDF to GIF..."; \
		convert -delay 8 -loop 0 -density 150 trio-visual.pdf trio-visual.gif; \
		echo "✓ Created trio-visual.gif"; \
	else \
		echo "Warning: ImageMagick (convert) not found. Skipping GIF creation."; \
		echo "Install with: $(PKG_MANAGER) install imagemagick"; \
	fi

mp4: trio-visual.pdf
	@if [ -n "$(HAS_FFMPEG)" ] && [ -n "$(HAS_PDFTOPPM)" ]; then \
		echo "Converting PDF to MP4..."; \
		pdftoppm -png -r 150 trio-visual.pdf temp-frame; \
		ffmpeg -framerate 10 -i temp-frame-%03d.png -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -c:v libx264 -pix_fmt yuv420p -y trio-visual.mp4 2>/dev/null || \
		ffmpeg -framerate 10 -pattern_type glob -i 'temp-frame-*.png' -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -c:v libx264 -pix_fmt yuv420p -y trio-visual.mp4; \
		rm -f temp-frame-*.png; \
		echo "✓ Created trio-visual.mp4"; \
	elif [ -z "$(HAS_FFMPEG)" ]; then \
		echo "Warning: FFmpeg not found. Skipping MP4 creation."; \
		echo "Install with: $(PKG_MANAGER) install ffmpeg"; \
	else \
		echo "Warning: pdftoppm not found. Skipping MP4 creation."; \
		echo "Install with: $(PKG_MANAGER) install poppler-utils"; \
	fi

frames: trio-visual.pdf
	@if [ -n "$(HAS_PDFTOPPM)" ]; then \
		echo "Extracting frames..."; \
		pdftoppm -png -r 150 trio-visual.pdf frame; \
		echo "✓ Created frame-*.png files"; \
	else \
		echo "Warning: pdftoppm not found. Skipping frame extraction."; \
		echo "Install with: $(PKG_MANAGER) install poppler-utils"; \
	fi

clean-anim:
	@echo "Cleaning animation files..."
	@rm -f trio-visual.gif trio-visual.mp4 frame-*.png temp-frame-*.png
	@echo "✓ Animation files removed"
