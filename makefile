# Simple recursive makefile

SUBDIRS=data src tex

.PHONY: $(SUBDIRS)

all: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@
