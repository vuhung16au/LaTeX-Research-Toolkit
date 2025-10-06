.PHONY: help pdf clean beginner intermediate advanced

SUBDIRS := beginner intermediate advanced

help:
	@echo "Exercises targets:"
	@echo "  make help  - Show this help"
	@echo "  make pdf   - Build PDFs in all exercise subfolders ($(SUBDIRS))"
	@echo "  make clean - Clean build artifacts in all exercise subfolders"

pdf: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@ pdf

clean:
	@for d in $(SUBDIRS); do \
		$(MAKE) -C $$d clean; \
	done
