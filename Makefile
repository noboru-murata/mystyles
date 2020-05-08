###
### usage: make push MSG='"first commit"'
###
.SUFFIXES: .org .sty
MSG	= "debug"
SRC	= $(shell ls my*.org)
TARGET	= $(SRC:%.org=%.sty)
TANGLE	= /bin/sh ./tangle.sh

all:	$(TARGET)

.org.sty:
	$(TANGLE) $<

push:
	git add -u
	git commit -m ${MSG}
	git push -u origin master

clean:
	rm -f *~

