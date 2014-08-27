all: dvi

dvi:
	latex recipe.tex
	latex recipe.tex

index: dvi
	makeindex recipe
	latex recipe

pdf: index
	dvipdf -G0 recipe

clean:
	-rm -f *.log *.aux *.lof *~

purge: clean
	-rm -f *.pdf *.toc *.idx *.dvi *.loc *.ilg *.ind
