DOCUMENT=dissertation

all: $(DOCUMENT) ## compile the document

$(DOCUMENT): ## compile the paper with latexmk
	sleep 1
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode\
		--shell-escape" $@.tex

clean: ## clean the build files (also in the image directory)
	latexmk -CA
	rm -f dissertation.{loa,bbl}

diff: $(DOCUMENT) ## make a diff of the current working dir and HEAD
	git-latexdiff --main $<.tex -v -o $<_changes.pdf \
		HEAD --
	rm $<_changes.pdf
	cp $<.pdf $<_changes.pdf
	$(MAKE) $<
