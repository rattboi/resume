DOC=resume

all: 
	pdflatex -file-line-error -interaction=nonstopmode $(DOC)

clean:
	rm $(DOC).log $(DOC).pdf $(DOC).aux