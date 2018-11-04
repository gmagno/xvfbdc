.PHONY: clean build run run-sh

build: clean
	docker build -t godwitlabs/xvfbdc .

run:
	docker run --rm -v ${PWD}/mount:/home/app/mount -ti godwitlabs/xvfbdc

run-sh:
	docker run --rm -v ${PWD}/mount:/home/app/mount -ti godwitlabs/xvfbdc bash

clean:
	rm -f mount/shot.xwd shot.jpg &&\
	touch mount/shot.xwd
