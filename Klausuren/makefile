DIR=$(notdir ${PWD})

all: compile rename clean

compile:
	latexmk -pdf exam.tex
clean:
	latexmk -C
rename:
	mv exam.pdf ${DIR}.pdf
