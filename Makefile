# Include common configuration
include config/common.mk

.PHONY: help pdf clean examples exercises templates check-deps install-deps

help:
	@echo "LaTeX Research Toolkit - Cross-Platform Build System"
	@echo ""
	@echo "Available targets:"
	@echo "  make help        - Show this help"
	@echo "  make check-deps  - Check system dependencies"
	@echo "  make install-deps- Show installation commands for missing deps"
	@echo "  make pdf         - Build PDFs for examples, exercises and templates"
	@echo "  make clean       - Clean build artifacts in examples, exercises and templates"
	@echo "  make examples    - Build PDFs only for examples"
	@echo "  make exercises   - Build PDFs only for exercises"
	@echo "  make templates   - Build PDFs only for templates"

check-deps:
	@echo "Checking LaTeX Research Toolkit dependencies..."
	@echo "Platform: $(PLATFORM) $(if $(DISTRO),($(DISTRO)))"
	@echo ""
	@echo "Required tools:"
	@if command -v pdflatex >/dev/null 2>&1; then \
		echo "✓ pdflatex"; \
	else \
		echo "✗ pdflatex - Please install LaTeX (TeX Live/MacTeX)"; \
		echo "  macOS: brew install --cask mactex"; \
		echo "  Ubuntu: sudo apt install texlive-full"; \
	fi
	@echo ""
	@echo "Optional tools:"
	@if [ -n "$(HAS_CONVERT)" ]; then \
		echo "✓ ImageMagick (convert) - For GIF creation"; \
	else \
		echo "⚠ ImageMagick (convert) - For GIF creation"; \
		echo "  Install: $(PKG_MANAGER) install imagemagick"; \
	fi
	@if [ -n "$(HAS_FFMPEG)" ]; then \
		echo "✓ FFmpeg - For MP4 creation"; \
	else \
		echo "⚠ FFmpeg - For MP4 creation"; \
		echo "  Install: $(PKG_MANAGER) install ffmpeg"; \
	fi
	@if [ -n "$(HAS_BIBER)" ]; then \
		echo "✓ Biber - Modern bibliography"; \
	else \
		echo "⚠ Biber - Modern bibliography"; \
		echo "  Install: $(PKG_MANAGER) install biber"; \
	fi
	@if [ -n "$(HAS_MAKEGLOSSARIES)" ]; then \
		echo "✓ makeglossaries - Glossary generation"; \
	else \
		echo "⚠ makeglossaries - Glossary generation"; \
		echo "  Install: $(PKG_MANAGER) install texlive-full"; \
	fi
	@if [ -n "$(HAS_PYGMENTS)" ]; then \
		echo "✓ Pygments - Code highlighting"; \
	else \
		echo "⚠ Pygments - Code highlighting for minted package"; \
		echo "  Install: pip install Pygments"; \
	fi

install-deps:
	@echo "Installation commands for missing dependencies:"
	@echo ""
	@echo "$(PLATFORM) setup:"
	@if [ "$(PLATFORM)" = "macos" ]; then \
		echo "# Install LaTeX"; \
		echo "brew install --cask mactex"; \
		echo ""; \
		echo "# Install optional tools"; \
		[ -z "$(HAS_CONVERT)" ] && echo "brew install imagemagick"; \
		[ -z "$(HAS_FFMPEG)" ] && echo "brew install ffmpeg"; \
		[ -z "$(HAS_BIBER)" ] && echo "brew install biber"; \
		[ -z "$(HAS_PYGMENTS)" ] && echo "pip install Pygments"; \
	elif [ "$(PLATFORM)" = "linux" ]; then \
		echo "# Install LaTeX"; \
		echo "sudo apt update"; \
		echo "sudo apt install texlive-full"; \
		echo ""; \
		echo "# Install optional tools"; \
		[ -z "$(HAS_CONVERT)" ] && echo "sudo apt install imagemagick"; \
		[ -z "$(HAS_FFMPEG)" ] && echo "sudo apt install ffmpeg"; \
		[ -z "$(HAS_BIBER)" ] && echo "sudo apt install biber"; \
		[ -z "$(HAS_PYGMENTS)" ] && echo "pip install Pygments"; \
	fi
	@echo ""
	@if [ -n "$(HAS_CONVERT)" ] && [ -n "$(HAS_FFMPEG)" ] && [ -n "$(HAS_BIBER)" ] && [ -n "$(HAS_PYGMENTS)" ]; then \
		echo "All optional dependencies are already installed!"; \
	fi

pdf: examples exercises templates

examples:
	$(MAKE) -C examples pdf

exercises:
	$(MAKE) -C exercises pdf

templates:
	$(MAKE) -C templates pdf

clean:
	$(MAKE) -C examples clean
	$(MAKE) -C exercises clean
	$(MAKE) -C templates clean
