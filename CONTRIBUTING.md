# Contributing

If you would like to contribute to this project please fork the repo and follow the guidelines below:

1. Create an issue outlining the feature or bug
2. Once approved/confirmed create a new branch from the staging branch
3. Once your feature has been implemented ensure:
  * Exisiting RSpec unit tests still pass
  * No [Rubocop](https://github.com/bbatsov/rubocop) offenses have been introduced
4. Create a new pull request merging into the staging branch (unit and rubocop tests will automatically run on travis)
5. Update PR if the code reviewer returns comments or tests fail in step above
6. Once merged the gem version + gemspec date will be updated and merged into the master branch
7. Travis will create a pre release gem on any merge into the master branch
8. Once the pre release gem is tested and approved the new gem version will be pushed to rubygems
