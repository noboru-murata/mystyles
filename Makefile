###
### usage: make push MSG='"first commit"'
###

MSG = "debug"

all:	push

push:
	git add -u
	git commit -m ${MSG}
	git push -u origin master

clean:
	rm -f *~

