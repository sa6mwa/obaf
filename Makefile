.DEFAULT_GOAL := help

PDFS := pdf/OBAF.pdf pdf/CENTAUR.pdf
PDF_FLAGS := --pdf --pdf-ocg-print-view

.PHONY: all clean help

all: $(PDFS)

clean:
	rm -f $(PDFS)

help:
	@printf '%s\n' \
		'Available targets:' \
		'  make all    Build all PDFs' \
		'  make clean  Remove generated PDFs' \
		'  make help   Show this help'

pdf/OBAF.pdf: PDF_FONT_SIZE := 9
pdf/OBAF.pdf: PDF_THEME := iosvkem

pdf/CENTAUR.pdf: PDF_FONT_SIZE := 10
pdf/CENTAUR.pdf: PDF_THEME := outrun-electric

pdf/%.pdf: %.md
	mdf -o $@ $(PDF_FLAGS) --pdf-font-size $(PDF_FONT_SIZE) -t $(PDF_THEME) $<
