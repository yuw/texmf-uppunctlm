dir = uppunctlm

all: status

status:
	git status .
ctan:
	mkdir -p tmp/$(dir)
	cp -a fonts/tfm tmp/$(dir)
	cp -a fonts/vf tmp/$(dir)
	cp -a doc tmp/$(dir)
	cp -a tex tmp/$(dir)
	cp -a README.md tmp/$(dir)
	cd tmp; zip -r $(dir).zip $(dir)
	mv tmp/$(dir).zip .
	rm -r tmp
