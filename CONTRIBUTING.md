# Contributing

If you would like to contribute to this project please fork the repo and follow the guidelines below:

1. Create an issue outlining the feature or bug
2. Once approved/confirmed create a new branch from the staging branch
3. Once your feature has been implemented ensure:
  * Exisiting RSpec unit tests still pass
  * No [Rubocop](https://github.com/bbatsov/rubocop) offenses have been introduced
4. Create a new pull request merging into the staging branch (unit and rubocop tests will automatically run on travis)
5. Update PR if the code reviewer returns comments or tests fail in the step above
6. Once merged into the staging branch travis will create a new pre release gem
7. Please test your changes locally using the new pre release gem
8. Subject to confirmation that the changes are working as expected the gem version + gemspec date will be updated
9. As before a new pre release gem will be created for the new version, once tested and approved the new gem version will be pushed to rubygems
