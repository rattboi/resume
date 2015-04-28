DOC=resume
COVER=coverletter

all: 
	pdflatex -file-line-error -interaction=nonstopmode $(DOC)

cover:
	pdflatex -file-line-error -interaction=nonstopmode $(COVER)

clean:
	rm $(DOC).log $(DOC).aux
	rm $(COVER).log $(COVER).aux

show:
	evince $(DOC).pdf &

showcover:
	evince $(COVER).pdf &
