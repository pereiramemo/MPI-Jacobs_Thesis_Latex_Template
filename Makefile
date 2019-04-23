PROJECT=main
TEX=pdflatex
BIBTEX=bibtex
BUILDTEX=$(TEX) $(PROJECT).tex

all:
	$(BUILDTEX)	
	$(BIBTEX) $(PROJECT)
	$(BIBTEX) $(PROJECT)1-blx.aux # Repeat this line changing the number for the different refsections
	$(BUILDTEX)
	$(BUILDTEX)
    
clean-all:
	rm -f *.dvi *.log *.bak *.aux *.bbl *.blg *.idx *.ps *.eps *.pdf *.toc *.out *~

clean:
	rm -f *.log *.bak *.aux *.bbl *.blg *.idx *.toc *.out *~