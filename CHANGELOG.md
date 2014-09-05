# Changelog
All notable changes to this project will be documented in this file.

## 9.0.1
### Fixed
* NoTask - fixed middleware conflict with the bw_status_board_api gem

## 9.0.0
### Added
* NoTask - updated notifications endpoints to match new structure
* NoTask - refactored configuration and defaults classes
* NoTask - removed hashie middleware in favour of OJ for improved performance
* NoTask - Implemented signals groups endpoints
* NoTask - Implemented mention notes endpoints
* #112 - Create logger middleware
* #113 - Create performance middleware
* #129 - Update README.md following latest updates
* #130 - Add separate CONTRIBUTING.md and CHANGELOG.md
* #133 - Updated method comments to return Hash instead of Hashie::Mash

### Fixed
* NoTask - remove unwanted opts from mentions note get request
