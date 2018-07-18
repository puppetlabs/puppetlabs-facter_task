## Release 0.3.1
Patch release for Windows path resolution on 32-bit

### Fixed
- The way in which facter\_task builds the path to the Windows facter executable on 32-bit Windows ([MODULES-7419](https://tickets.puppetlabs.com/browse/MODULES-7419))
- Provides a clearer error message when running tasks fails.

## Release 0.3.0
This breaking release changes the return format to always be structured json instead of unformatted strings. It also allows fetching all facts.

### Changed
- Make the format always return json instead of strings.

### Added
- Fetch all facts if no fact to fetch is provided.

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
