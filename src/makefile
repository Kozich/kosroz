GP=5km
MP=mpost --tex=cslatex
DN=/dev/null
.PHONY: all gp mp 

all: gp mp
gp:$(GP).mp
mp:$(GP).eps
$(GP).mp:$(GP).gp
	gnuplot $(GP).gp 1>$(DN) 2>$(DN)
$(GP).eps:$(GP).mp
	$(MP) $(GP).mp 1>$(DN) 2>$(DN) && (mv $(GP).0 $(GP).eps || mv $(GP).1 $(GP).eps)
#clean:
#	find $(OUT) -type f -not \( -name "$(GP).gp" -o -name "$(GP).0" -o -name ".*" \) | xargs rm
