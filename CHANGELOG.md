## Release 0.2.1
Patch release for Windows path resolution.

### Fixed
- The way in which facter\_task builds the path to the Windows facter executable ([MODULES-5738](https://tickets.puppet.com/browse/MODULES-5738))

## Release 0.2.0
Conversion of the module using PDK 1.4.1

### Changed
- The module has been converted using the PDK version 1.4.1, alongside the addition of some relevant Rubocop fixes.

## Release 0.1.5
Security release for CVE-2018-6508

### Fixed
- init task vulnerability to arbitrary remote code execution

## Release 0.1.4

### Fixed
- issue with Facter path ([FM-6472](https://tickets.puppet.com/browse/FM-6472))

## Release 0.1.3

### Fixed
- Readme updates.
- noop metadata

### Features
- Retrieve custom facts.

## Release 0.1.2

### Fixed
- Fixed locales project name.

## Release 0.1.1
This is the initial release of the facter task.

## Features
- Allows the retrieval of a fact from a node.
