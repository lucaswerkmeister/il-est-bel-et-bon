.PHONY: all clean

all: il-est-bel-et-bon.pdf

%.pdf: %.ly
	lilypond $<

clean:
	$(RM) *.pdf
