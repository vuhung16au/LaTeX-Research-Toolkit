.PHONY: help pdf clean

help:
	@echo "Available targets:"
	@echo "  make help  - Show this help"
	@echo "  make pdf   - Build PDFs for all examples"
	@echo "  make clean - Clean build artifacts in all examples"

pdf:
	$(MAKE) -C examples pdf

clean:
	$(MAKE) -C examples clean
