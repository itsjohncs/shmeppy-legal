.PHONY: all

all: build/terms-of-service.htm build/privacy-policy.htm
	@echo "Done! Look under build/ to see compiled documents."

build/terms-of-service.htm: terms-of-service/terms-of-service.md | build
	pandoc -o build/terms-of-service.htm terms-of-service/terms-of-service.md

build/privacy-policy.htm: privacy-policy/privacy-policy.md | build
	pandoc -o build/privacy-policy.htm privacy-policy/privacy-policy.md

build:
	mkdir $@
