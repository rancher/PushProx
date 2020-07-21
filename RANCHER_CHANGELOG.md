# Changelog
All notable changes from the upstream [prometheus-community/PushProx](https://github.com/prometheus-community/PushProx) repository will be added to this file.

### Added
- Added `RANCHER_CHANGELOG.md` to keep track of changes introduced to the upstream repository.

### Modified
- Modified the `README.md` to add information about the Rancher fork
- Modified `Makefile` to use [Dapper](https://github.com/rancher/dapper)
- Modified `go.mod` to use `github.com/rancher/pushprox` as the module name
- Moved `end-to-end-test.sh` into the `scripts` directory

### Removed
- Removed several files given by the upstream repository:
    - `VERSION`
    - `CHANGELOG.md`
    - `CODE_OF_CONDUCT.md`
    - `Makefile.common`