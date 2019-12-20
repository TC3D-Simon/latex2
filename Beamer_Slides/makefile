DIR=$(notdir ${PWD})

all: compile rename clean

compile:
	latexmk -pdf presentation.tex
clean:
	latexmk -C
	rm presentation.nav presentation.snm
rename:
	mv presentation.pdf ${DIR}.pdf
