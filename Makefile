.PHONY: help pdf clean examples exercises templates

help:
    @echo "Available targets:"
    @echo "  make help        - Show this help"
    @echo "  make pdf         - Build PDFs for examples, exercises and templates"
    @echo "  make clean       - Clean build artifacts in examples, exercises and templates"
    @echo "  make examples    - Build PDFs only for examples"
    @echo "  make exercises   - Build PDFs only for exercises"
    @echo "  make templates   - Build PDFs only for templates"

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
