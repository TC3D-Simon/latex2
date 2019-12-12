DIR=$(notdir ${PWD})

all: compile rename clean

compile:
	latexmk -pdf presentation.tex
clean:
	latexmk -C
rename:
	mv presentation.pdf ${DIR}.pdf
