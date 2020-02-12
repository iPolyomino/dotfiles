%.dvi : %.tex
	uplatex $<
	rm -f $*.aux $*.log $*.toc

%.ps : %.dvi
	dvips -o $@ $<

%.pdf : %.ps
	ps2pdf $<
