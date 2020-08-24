###
### usage: make push MSG='"first commit"'
###
.SUFFIXES: .org .sty
MSG	= "debug"
SRC	= $(shell ls my*.org)
TARGET	= $(SRC:%.org=%.sty)

all:	$(TARGET)

.org.sty:
	emacs --batch -l org --eval "(org-babel-tangle-file \"$<\")"

push:
	git add -u
	git commit -m ${MSG}
	git push -u origin master

clean:
	rm -f *~

