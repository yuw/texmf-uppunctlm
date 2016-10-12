dir = uppunctlm

all: status

status:
	git status .
ctan:
	mkdir -p tmp/$(dir)/fonts
	cp -a fonts/tfm tmp/$(dir)/fonts
	cp -a fonts/vf tmp/$(dir)/fonts
	cp -a doc tmp/$(dir)
	cp -a tex tmp/$(dir)
	cp -a README.md tmp/$(dir)
	cd tmp; zip -r $(dir).tds.zip ./; zip $(dir).zip $(dir).tds.zip
	mv tmp/$(dir).zip .
	rm -r tmp
