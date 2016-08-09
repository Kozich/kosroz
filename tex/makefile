TEX=kosmicke
EPS=../src/5km.eps
DN=/dev/null
.PHONY: all dvi pdf 

all: dvi pdf
dvi:$(TEX).dvi
pdf:$(TEX).pdf
$(TEX).dvi:$(TEX).tex $(EPS)
	latex $(TEX).tex 1> $(DN) 2> $(DN)
$(TEX).pdf:$(TEX).dvi
	dvipdf $(TEX).dvi 1> $(DN) 2> $(DN)
#clean:
#	find $(OUT) -type f -not \( -name "$(GP).tex" -o -name "$(GP).tex" -o -name ".*" \) | xargs rm
