# Change log

All notable changes to this project will be documented in this file. The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](http://semver.org).

## [v1.0.0](https://github.com/puppetlabs/puppetlabs-facter_task/tree/v1.0.0) (2021-02-27)

[Full Changelog](https://github.com/puppetlabs/puppetlabs-facter_task/compare/v0.9.0...v1.0.0)

### Changed

- pdksync - \(MAINT\) Remove RHEL 5 family support [\#154](https://github.com/puppetlabs/puppetlabs-facter_task/pull/154) ([sanfrancrisko](https://github.com/sanfrancrisko))
- pdksync - Remove Puppet 5 from testing and bump minimal version to 6.0.0 [\#151](https://github.com/puppetlabs/puppetlabs-facter_task/pull/151) ([carabasdaniel](https://github.com/carabasdaniel))

### Added

- \(MODULES-10833\) Add support for puppet facts show [\#134](https://github.com/puppetlabs/puppetlabs-facter_task/pull/134) ([IrimieBogdan](https://github.com/IrimieBogdan))

## [v0.9.0](https://github.com/puppetlabs/puppetlabs-facter_task/tree/v0.9.0) (2021-01-18)

[Full Changelog](https://github.com/puppetlabs/puppetlabs-facter_task/compare/v.0.8.0...v0.9.0)

### Added

- pdksync - \(feat\) Add support for Puppet 7 [\#142](https://github.com/puppetlabs/puppetlabs-facter_task/pull/142) ([daianamezdrea](https://github.com/daianamezdrea))

## [v.0.8.0](https://github.com/puppetlabs/puppetlabs-facter_task/tree/v.0.8.0) (2020-11-16)

[Full Changelog](https://github.com/puppetlabs/puppetlabs-facter_task/compare/v0.7.0...v.0.8.0)

### Added

- pdksync - \(IAC-973\) - Update travis/appveyor to run on new default branch main [\#127](https://github.com/puppetlabs/puppetlabs-facter_task/pull/127) ([david22swan](https://github.com/david22swan))

### Fixed

- \(MODULES-10602\) workaround for "765: unexpected token at ''" error [\#135](https://github.com/puppetlabs/puppetlabs-facter_task/pull/135) ([carabasdaniel](https://github.com/carabasdaniel))
- \(IAC-986\) - Removal of inappropriate terminology [\#132](https://github.com/puppetlabs/puppetlabs-facter_task/pull/132) ([david22swan](https://github.com/david22swan))

## [v0.7.0](https://github.com/puppetlabs/puppetlabs-facter_task/tree/v0.7.0) (2020-01-03)

[Full Changelog](https://github.com/puppetlabs/puppetlabs-facter_task/compare/v0.6.0...v0.7.0)

### Added

- pdksync - "MODULES-10242 Add ubuntu14 support back to the modules" [\#101](https://github.com/puppetlabs/puppetlabs-facter_task/pull/101) ([sheenaajay](https://github.com/sheenaajay))
- \(FM-8688\) - Addition of support for CentOS 8 [\#97](https://github.com/puppetlabs/puppetlabs-facter_task/pull/97) ([david22swan](https://github.com/david22swan))

## [v0.6.0](https://github.com/puppetlabs/puppetlabs-facter_task/tree/v0.6.0) (2019-11-11)

[Full Changelog](https://github.com/puppetlabs/puppetlabs-facter_task/compare/v0.5.0...v0.6.0)

### Changed

- pdksync - FM-8499 - remove ubuntu14 support [\#93](https://github.com/puppetlabs/puppetlabs-facter_task/pull/93) ([lionce](https://github.com/lionce))

## [v0.5.0](https://github.com/puppetlabs/puppetlabs-facter_task/tree/v0.5.0) (2019-09-05)

[Full Changelog](https://github.com/puppetlabs/puppetlabs-facter_task/compare/0.4.1...v0.5.0)

### Changed

- pdksync - \(MODULES-8444\) - Raise lower Puppet bound [\#69](https://github.com/puppetlabs/puppetlabs-facter_task/pull/69) ([david22swan](https://github.com/david22swan))

### Added

- FM-8218 Port Module facter\_task to Litmus [\#79](https://github.com/puppetlabs/puppetlabs-facter_task/pull/79) ([sheenaajay](https://github.com/sheenaajay))
- \(FM-8153\) Add Windows Server 2019 support [\#73](https://github.com/puppetlabs/puppetlabs-facter_task/pull/73) ([eimlav](https://github.com/eimlav))
- \(FM-8040\) Add RedHat 8 support [\#72](https://github.com/puppetlabs/puppetlabs-facter_task/pull/72) ([eimlav](https://github.com/eimlav))
- FM-7944 - stringify facter\_task [\#71](https://github.com/puppetlabs/puppetlabs-facter_task/pull/71) ([lionce](https://github.com/lionce))

## [0.4.1](https://github.com/puppetlabs/puppetlabs-facter_task/tree/0.4.1) (2019-04-05)

[Full Changelog](https://github.com/puppetlabs/puppetlabs-facter_task/compare/0.4.0...0.4.1)

### Fixed

- pdksync - \(FM-7655\) Fix rubygems-update for ruby \< 2.3 [\#55](https://github.com/puppetlabs/puppetlabs-facter_task/pull/55) ([tphoney](https://github.com/tphoney))

## [0.4.0](https://github.com/puppetlabs/puppetlabs-facter_task/tree/0.4.0) (2018-09-28)

[Full Changelog](https://github.com/puppetlabs/puppetlabs-facter_task/compare/0.3.1...0.4.0)

### Added

- pdksync - \(FM-7392\) - Puppet 6 Testing Changes [\#49](https://github.com/puppetlabs/puppetlabs-facter_task/pull/49) ([pmcmaw](https://github.com/pmcmaw))
- pdksync - \(MODULES-6805\) metadata.json shows support for puppet 6 [\#48](https://github.com/puppetlabs/puppetlabs-facter_task/pull/48) ([tphoney](https://github.com/tphoney))
- \(FM-7268\) - Addition of support for ubuntu 18.04 [\#41](https://github.com/puppetlabs/puppetlabs-facter_task/pull/41) ([david22swan](https://github.com/david22swan))

## 0.3.1
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


\* *This Changelog was automatically generated by [github_changelog_generator](https://github.com/github-changelog-generator/github-changelog-generator)*
