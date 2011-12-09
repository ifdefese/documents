ALL=projectplan.pdf design.pdf
LATEX_VARS=TEXINPUTS='.;./include;;'
LATEX_FLAGS=-output-directory=texout

all: $(ALL)

projectplan.pdf: projectplan.tex
design.pdf: design.tex

diagrams/%.pdf: diagrams/%.pdf
	make -C diagrams

%.pdf: %.tex
	$(LATEX_VARS) pdflatex $(LATEX_FLAGS) $<
	touch texout/$@
	$(LATEX_VARS) pdflatex $(LATEX_FLAGS) $<
	mv texout/$@ ./

%.dvi: %.tex
	$(LATEX_VARS) latex $(LATEX_FLAGS) $<
	mv texout/$@ ./

images/%.png: uml/%.dia
	dia $^ -e $@

images/%.pdf: uml/%.dia
	dia $^ -e  uml/$*.eps
	epstopdf uml/$*.eps
	mv uml/$*.pdf images/
	rm -f uml/$*.eps

clean:
	rm -f texout/* *.pdf *.dvi *~ \#*\#

