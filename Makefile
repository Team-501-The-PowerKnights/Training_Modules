
book: 
	pdflatex --shell-escape "\def\isbook{1} \input{$(fn).tex}"
	# pdflatex -interaction=nonstopmode "\def\isbook{1} \input{$(fn).tex}"
	# Compile twice to build the table of contents. Alternatives appreciated...

web:
	echo "\def\isweb{1} \input{$(fn).tex}" > $(fn).htex
	htlatex $(fn).htex

clean:
	rm -rf *.aux *.4ct *.4tc *.css *.dvi *.html *.idv *.idx *.ilg *.ind *.lg *.pdf *.tmp *.xref *.aux *.log *.synctex.gz *.out *.toc *.svg