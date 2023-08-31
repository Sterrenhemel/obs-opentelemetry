TOOLS_SHELL="./hack/tools.sh"

.PHONY: test
test:
	@${TOOLS_SHELL} test
	@echo "go test finished"

fmt:
	go install -v github.com/incu6us/goimports-reviser/v3@latest
	goimports-reviser -company-prefixes github.com/Sterrenhemel -recursive .

.PHONY: vet
vet:
	@${TOOLS_SHELL} vet
	@echo "vet check finished"
