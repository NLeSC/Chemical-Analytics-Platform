# Change Log
All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]

## 0.8.0 - 2016-05-04

### Added

* Check distro version, give upgrade instructions when provision scripts require different distro version

### Changed

* Upgraded RDKit to 2016.03.1
* Upgraded Ubuntu to 16.04
* Upgraded Knime to v3.1.2
* Upgraded Virtualbox Guest Additions to v5.0.20

## 0.7.2 - 2016-02-24

### Changed

- Start from Ubuntu 14.04.4 instead of 14.04.3
- Upgraded Knime to version 3.1.

## 0.7.1 - 2016-01-22

### Changed

- Updated Knime update sits

### Fixed

- Unable to update Knime as vagrant user

## 0.7.0 - 2016-01-20

### Added

- Chembl database create script, see [wiki](https://github.com/NLeSC/Chemical-Analytics-Platform/wiki/Cheatsheet#chembl-database-tables)

### Deprecated

- Switched from starting from myCheml vagrant box to packer build system which starts from Ubuntu iso.

### Removed

- Chembl database

## 0.6.1 - 2016-01-06

### Changed

- Updated Knime to 3.1
- Updated Virtualbox Guest Additions to 5.0.12

## 0.6.0 - 2016-11-10

### Added

- self upgrade script, see [wiki](https://github.com/NLeSC/Chemical-Analytics-Platform/wiki/Cheatsheet#performing-a-self-upgrade)

## 0.5.0 - 2015-10-16

### Added

- camb (https://github.com/cambDI/camb)
