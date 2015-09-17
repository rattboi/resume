DOC=resume
COVER=coverletter
COMBINED=BradonKanyid

all: 
	pdflatex -file-line-error -interaction=nonstopmode $(DOC)
	pdflatex -file-line-error -interaction=nonstopmode $(COVER)
	pdfunite $(COVER).pdf $(DOC).pdf $(COMBINED).pdf

clean:
	rm $(DOC).log $(DOC).aux
	rm $(COVER).log $(COVER).aux

show:
	evince $(COMBINED).pdf &
