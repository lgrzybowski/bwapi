# Changelog
All notable changes to this project will be documented in this file.

## 10.0.0
### Added
* NoTask - added brandwatch client user post method
* NoTask - updated brandwatch client modules endpoint
* NoTask - updated travis.yml to create pre release gem on staging branch
* NoTask - Refactored request to break out request options logic
* NoTask - Added csv middleware and the ability to include a response extension

### Fixed
* NoTask - Added missing client_id for PUT brandwatch/clients/client_id/modules
* 158 - fixed small bug where options could not be passed in client_user_groups method

## 9.2.0
### Added
* NoTask - added admin clients usergroups endpoints

## 9.1.0
### Added
* NoTask - added parent client endpoints

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
