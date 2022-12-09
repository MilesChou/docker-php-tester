#!/usr/bin/make -f

IMAGE := ghcr.io/mileschou/php-tester
.PHONY: 8.2 8.1 8.0 7.4 7.3 7.2 7.1 7.0 5.6 5.5

# ------------------------------------------------------------------------------

all: 8.2 8.1 8.0 7.4 7.3 7.2 7.1 7.0 5.6 5.5

8.2:
	docker build -t=$(IMAGE):8.2-alpine -f 8.2/alpine/Dockerfile .
	docker build -t=$(IMAGE):8.2-apache -f 8.2/apache/Dockerfile .

8.1:
	docker build -t=$(IMAGE):8.1-alpine -f 8.1/alpine/Dockerfile .
	docker build -t=$(IMAGE):8.1-apache -f 8.1/apache/Dockerfile .

8.0:
	docker build -t=$(IMAGE):8.0-alpine -f 8.0/alpine/Dockerfile .
	docker build -t=$(IMAGE):8.0-apache -f 8.0/apache/Dockerfile .

7.4:
	docker build -t=$(IMAGE):7.4-alpine -f 7.4/alpine/Dockerfile .
	docker build -t=$(IMAGE):7.4-apache -f 7.4/apache/Dockerfile .

7.3:
	docker build -t=$(IMAGE):7.3-alpine -f 7.3/alpine/Dockerfile .
	docker build -t=$(IMAGE):7.3-apache -f 7.3/apache/Dockerfile .

7.2:
	docker build -t=$(IMAGE):7.2-alpine -f 7.2/alpine/Dockerfile .
	docker build -t=$(IMAGE):7.2-apache -f 7.2/apache/Dockerfile .

7.1:
	docker build -t=$(IMAGE):7.1-alpine -f 7.1/alpine/Dockerfile .
	docker build -t=$(IMAGE):7.1-apache -f 7.1/apache/Dockerfile .

7.0:
	docker build -t=$(IMAGE):7.0-alpine -f 7.0/alpine/Dockerfile .
	docker build -t=$(IMAGE):7.0-apache -f 7.0/apache/Dockerfile .

5.6:
	docker build -t=$(IMAGE):5.6-alpine -f 5.6/alpine/Dockerfile .
	docker build -t=$(IMAGE):5.6-apache -f 5.6/apache/Dockerfile .

5.5:
	docker build -t=$(IMAGE):5.5-alpine -f 5.5/alpine/Dockerfile .
	docker build -t=$(IMAGE):5.5-apache -f 5.5/apache/Dockerfile .
