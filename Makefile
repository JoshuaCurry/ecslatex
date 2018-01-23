TARGET = master

latex:
	pdflatex $(TARGET).tex
bibtex:
	bibtex $(TARGET).tex
spell_%:
	aspell check $%.tex
report:
	pdflatex $(TARGET).tex
	bibtex $(TARGET)	
	pdflatex $(TARGET).tex
	pdflatex $(TARGET).tex
all:  report view  count clean
view: 
	evince $(TARGET).pdf &
count:
	texcount -inc -html -v -sum $(TARGET).tex > results.html
	firefox results.html &

clean:
	rm *.aux *.out  *.fls *.log *.lol *.lof *.fdb_latexmk *.lot *.toc
	rm *.pdf 

