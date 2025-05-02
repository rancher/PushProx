MACHINE := rancher
BUILDX_ARGS ?= --sbom=true --attest type=provenance,mode=max
IMAGE := pushprox
TARGETS := $(shell ls scripts)

$(TARGETS):
	./scripts/$@

.DEFAULT_GOAL := default

.PHONY: $(TARGETS)

.PHONY: buildx-machine
buildx-machine: ## create rancher dockerbuildx machine targeting platform defined by DEFAULT_PLATFORMS.
	@docker buildx ls | grep $(MACHINE) || docker buildx create --name=$(MACHINE) --platform=$(TARGET_PLATFORMS)

.PHONY: push-image
push-image: buildx-machine ## build the container image targeting all platforms defined by TARGET_PLATFORMS and push to a registry.
	docker buildx build -f package/Dockerfile \
		--builder=$(MACHINE) $(IID_FILE_FLAG) $(BUILDX_ARGS) \
		--platform=$(TARGET_PLATFORMS) -t $(REPO)/$(IMAGE):$(TAG) --push .
	@echo "Pushed $(REPO)/$(IMAGE):$(TAG)"
