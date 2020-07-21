# Changelog
All notable changes from the upstream [prometheus-community/PushProx](https://github.com/prometheus-community/PushProx) repository will be added to this file.

### Added
- Rancher build components:
    - `.drone.yml`
    - `.golangci.json`
    - `Dockerfile.dapper`
    - `scripts/`
    - `package/client/Dockerfile` for the client image
    - `package/proxy/Dockerfile` for the proxy image

### Misc. Changes
- Modified the `README.md` to add information about the Rancher fork
- Modified the module name to `github.com/rancher/pushprox` and made the relevant changes to `cmd/proxy/coordinator.go`, `cmd/proxy/main.go`, and `go.mod` for it
- Replaced the following files with the Rancher versions of them:
    - `.gitignore`
    - `Makefile`
- Removed build files associated with the upstream repository
    - `.circleci/config.yml`
    - `.promu.yml`
    - `Dockerfile`
    - `Makefile.common`
    - `end-to-end-test.sh`
