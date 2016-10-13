dir = uppunctlm

all: status

status:
	git status .
ctan:
	mkdir -p tmp/$(dir)
	cp -a fonts/tfm tmp/$(dir)
	cp -a fonts/vf tmp/$(dir)
	cp -a doc/$(dir) tmp/$(dir)/doc
	cp -a tex/latex/$(dir) tmp/$(dir)/tex
	cp -a README.md tmp/$(dir)
	cd tmp; zip -r $(dir).zip $(dir)
	mv tmp/$(dir).zip .
	rm -r tmp
