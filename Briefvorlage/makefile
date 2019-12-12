DIR=$(notdir ${PWD})

all: compile rename clean

compile:
	latexmk -pdf brief
clean:
	latexmk -C brief
rename:
	mv brief.pdf ${DIR}.pdf

