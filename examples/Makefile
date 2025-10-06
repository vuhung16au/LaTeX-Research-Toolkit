.PHONY: help pdf clean basic intermediate advanced research-specific

SUBDIRS := basic intermediate advanced research-specific

help:
	@echo "Examples targets:"
	@echo "  make help  - Show this help"
	@echo "  make pdf   - Build PDFs in all subfolders ($(SUBDIRS))"
	@echo "  make clean - Clean build artifacts in all subfolders"

pdf: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@ pdf

clean:
	@for d in $(SUBDIRS); do \
		$(MAKE) -C $$d clean; \
	done
