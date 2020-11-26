#!/usr/bin/make -f

IMAGE := mileschou/xdebug
.PHONY: 5.5 5.6 7.0 7.1 7.2 7.3 7.4 8.0

# ------------------------------------------------------------------------------

all: 5.5 5.6 7.0 7.1 7.2 7.3 7.4 8.0

5.5:
	docker build -t=$(IMAGE):5.5 -f 5.5/Dockerfile .
	docker build -t=$(IMAGE):5.5-apache -f 5.5/apache/Dockerfile .

5.6:
	docker build -t=$(IMAGE):5.6 -f 5.6/Dockerfile .
	docker build -t=$(IMAGE):5.6-apache -f 5.6/apache/Dockerfile .

7.0:
	docker build -t=$(IMAGE):7.0 -f 7.0/Dockerfile .
	docker build -t=$(IMAGE):7.0-apache -f 7.0/apache/Dockerfile .

7.1:
	docker build -t=$(IMAGE):7.1 -f 7.1/Dockerfile .
	docker build -t=$(IMAGE):7.1-apache -f 7.1/apache/Dockerfile .

7.2:
	docker build -t=$(IMAGE):7.2 -f 7.2/Dockerfile .
	docker build -t=$(IMAGE):7.2-apache -f 7.2/apache/Dockerfile .

7.3:
	docker build -t=$(IMAGE):7.3 -f 7.3/Dockerfile .
	docker build -t=$(IMAGE):7.3-apache -f 7.3/apache/Dockerfile .

7.4:
	docker build -t=$(IMAGE):7.4 -f 7.4/Dockerfile .
	docker build -t=$(IMAGE):7.4-apache -f 7.4/apache/Dockerfile .

8.0:
	docker build -t=$(IMAGE):8.0 -f 8.0/Dockerfile .
	docker build -t=$(IMAGE):8.0-apache -f 8.0/apache/Dockerfile .
