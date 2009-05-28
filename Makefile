HOME=/home/dajobe

RAPTOR=$(HOME)/dev/redland/raptor

WEBSITEDIR=$(HOME)/websites/www.dajobe.org/2004/01/turtle/

TURTLES=example1.ttl example2.ttl example3.ttl

all: install text

install: check install.stamp

install.stamp: index.html stylesheet.css $(TURTLES) .htaccess tests.zip grammar.ttl
	rsync -avz --include=TODO.txt --include=index.html --include=200\* --include=stylesheet.css --include=example\*.ttl --include=.htaccess --include=grammar.ttl --include=tests.zip --exclude=\* ./ $(WEBSITEDIR)/
	cd $(WEBSITEDIR); rm -rf tests && mkdir tests && cd tests && unzip -q ../tests.zip
	md5sum tests.zip
	touch $@

text: index.txt

index.txt: index.html
	lynx -nolist -dump $? > $@

grammar.txt: index.html
	lynx -nolist -dump -width 1000 $? | egrep '\[.*::=' | sed -e 's/^ *//' > $@

grammar.ttl: grammar.txt bnf2turtle.py
	python bnf2turtle.py $? | sed -e 's,http://www.w3.org/2001/sw/DataAccess/rq23/parsers/sparql\#,http://www.dajobe.org/2004/01/turtle/grammar\#,' > $@

tests.zip: $(RAPTOR)/tests/turtle/tests.zip
	cd $(RAPTOR)/tests/turtle && $(MAKE) tests.zip
	cp $(RAPTOR)/tests/turtle/tests.zip .
	date=`date +%Y-%m-%d`; \
	cp -p tests.zip tests-$$date.zip

check:
	xmllint --noout --valid index.html

turtle.zip:
	rm -f turtle.zip
	zip turtle.zip index.html example1.ttl example2.ttl example3.ttl
