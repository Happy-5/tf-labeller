SHELL := /bin/bash

-include $(shell curl -sSL -o .build-harness "https://git.io/build-harness"; echo .build-harness)

lint:
	$(SHELF) terraform:install terraform:get-modules terraform:get-plugins terraform:lint terraform:validate