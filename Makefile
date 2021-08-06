SRCs = $(wildcard *.tex)
PDFs = $(SRCs:.tex=.pdf)

all: $(PDFs)

%.pdf: %.tex
	musixtex -p -F optex $(basename $^)

clean:
	rm -f $(PDFs)
