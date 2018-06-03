#!/usr/bin/make -f

IMAGE := 104corp/php-testing
.PHONY: 5.5 5.5sh 5.6 5.6sh 7.0 7.0sh 7.1 7.1sh 7.2 7.2sh

# ------------------------------------------------------------------------------

all: 5.5 5.6 7.0 7.1 7.2

5.5:
	docker build -t=$(IMAGE):5.5 -f 5.5/Dockerfile .

5.5sh: 5.5
	docker run --rm -it $(IMAGE):5.5 sh

5.6:
	docker build -t=$(IMAGE):5.6 -f 5.6/Dockerfile .

5.6sh: 5.6
	docker run --rm -it $(IMAGE):5.6 sh

7.0:
	docker build -t=$(IMAGE):7.0 -f 7.0/Dockerfile .

7.0sh: 7.0
	docker run --rm -it $(IMAGE):7.0 sh

7.1:
	docker build -t=$(IMAGE):7.1 -f 7.1/Dockerfile .

7.1sh: 7.1
	docker run --rm -it $(IMAGE):7.1 sh

7.2:
	docker build -t=$(IMAGE):7.2 -f 7.2/Dockerfile .

7.2sh: 7.2
	docker run --rm -it $(IMAGE):7.2 sh
