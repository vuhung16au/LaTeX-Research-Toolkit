.PHONY: help pdf clean academic-paper thesis presentation letter

SUBDIRS := academic-paper thesis presentation letter

help:
	@echo "Templates targets:"
	@echo "  make help  - Show this help"
	@echo "  make pdf   - Build PDFs in all template subfolders ($(SUBDIRS))"
	@echo "  make clean - Clean build artifacts in all template subfolders"

pdf: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@ pdf

clean:
	@for d in $(SUBDIRS); do \
		$(MAKE) -C $$d clean; \
	done
