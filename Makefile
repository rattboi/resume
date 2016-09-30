DOC=resume
COVER=coverletter
COMBINED=BradonKanyid

all: 
	pdflatex -file-line-error -interaction=nonstopmode $(DOC)
	pdfunite $(DOC).pdf $(COMBINED).pdf

clean:
	rm -f $(DOC).log $(DOC).aux
	rm -f $(COVER).log $(COVER).aux

show:
	evince $(COMBINED).pdf &
