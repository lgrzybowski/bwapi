[![Gem Version](https://badge.fury.io/rb/bwapi.png)](http://badge.fury.io/rb/bwapi)
[![Build Status](https://travis-ci.org/jonathanchrisp/bwapi.png?branch=master)](https://travis-ci.org/jonathanchrisp/bwapi)
[![Dependency Status](https://gemnasium.com/jonathanchrisp/bwapi.png)](https://gemnasium.com/jonathanchrisp/bwapi)
[![Code Climate](https://codeclimate.com/github/jonathanchrisp/bwapi.png)](https://codeclimate.com/github/jonathanchrisp/bwapi)
[![Coverage Status](https://coveralls.io/repos/jonathanchrisp/bwapi/badge.png?branch=master)](https://coveralls.io/r/jonathanchrisp/bwapi?branch=master)

# bwapi

__PLEASE NOTE THAT THIS PROJECT IS NOT OFFICIALLY SUPPORTED BY BRANDWATCH__

A Ruby interface to the Brandwatch V2 API. The projects design is modelled on the GitHub Octokit wrapper which can be found here: https://github.com/octokit/octokit.rb.

## Documentation 
http://rubydoc.info/gems/bwapi/

## Getting Started 
All Brandwatch API calls at present require you to be authenticated, therefore you'll need to create an instance of a client and call login immediately:

```ruby
bw = BWAPI::Client.new(username: 'username@example.com', password: 'pa$$w0rd')
bw.login
```

The API returns the oauth/token response with your authentication details.

### Examples

Once authenticated, you are then able to make additional requests. The bwapi gem will automatically add your clients access token to the request header. Please see some examples of API requests below:

#### Get all projects
```ruby
bw.projects
=> #<Hashie::Mash results=[#<Hashie::Mash clientId=1856278873 clientName="JC BWAPI Demo" creationDate="2013-07-24T17:56:31.074+0000" creatorUserId=158304410 defaultIndustry="general-(recommended)" defaultLangCodes=["en"] description=nil id=1856280126 links=#<Hashie::Mash queries="http://newapi.brandwatch.com//projects/1856280126/queries.json?access_token=bd405bd7-9d1f-4c3d-ab5c-64b77791ae7f"> name="Demo Project">] resultsPage=-1 resultsPageSize=-1 resultsTotal=-1>
```

#### Get a specific project
```ruby
bw.project 1856280126
=> #<Hashie::Mash clientId=1856278873 clientName="JC BWAPI Demo" creationDate="2013-07-24T17:56:31.074+0000" creatorUserId=158304410 defaultIndustry="general-(recommended)" defaultLangCodes=["en"] description=nil id=1856280126 links=#<Hashie::Mash queries="http://newapi.brandwatch.com//projects/1856280126/queries.json?access_token=bd405bd7-9d1f-4c3d-ab5c-64b77791ae7f"> name="Demo Project">
```

#### Get a project queries summary
```ruby
bw.queries_summary 1856280126
=> #<Hashie::Mash results=[#<Hashie::Mash id=1856280351 name="LA Lakers">] resultsPage=-1 resultsPageSize=-1 resultsTotal=-1>
```

#### Get user information
```ruby
bw.me
=> #<Hashie::Mash client=#<Hashie::Mash id=1856278873 name="JC BWAPI Demo" parentId=-1 railsEnabled=false theme="brandwatch"> firstName="BWAPI" id=158304410 lastName="Demo" links=#<Hashie::Mash logout="http://newapi.brandwatch.com/logout?access_token=bd405bd7-9d1f-4c3d-ab5c-64b77791ae7f" user="http://newapi.brandwatch.com//user.json?access_token=bd405bd7-9d1f-4c3d-ab5c-64b77791ae7f"> tags=#<Hashie::Mash notify="true"> uiRole="admin" username="bwapi_demo=jonathan@brandwatch.com">
```

### Debug
In order to see the requests and responses which are being requested and returned, you can enable debug by passing this in as an option when creating your client instance:

```ruby
bw = BWAPI::Client.new(username: 'username@example.com', password: 'pa$$w0rd', debug: true)
```

Once enabled a `bwapi.log` file will be created in the current directory. Please note that you can access the log from your client also:

```ruby
bw.log.info 'logging information'
```

The above will only work if you enabled debug when creating your client.

## Contributing
If you would like to contribute to this project please fork, create your new feature and then submit a PR merging into the `staging` branch. Once the feature is merged I'll update the version number and date in the gemspec and merge to master. 

Once the staging branch is merged into master a pre-release gem will automatically be created via travis. Subject to no issues being found the new version of the gem will be pushed to RubyGems.

## Tests
There are a number of unit tests which are included as part of this project, please run:

```ruby
rspec spec
```
      
Please note that a number of tests still need to be added so I don't currently have complete coverage, subject to workload these will be slowly added over the next few months.

## Feedback
I would be more than happy to recieve feedback, please email me at: jonathan.chrisp@gmail.com or jonathan@brandwatch.com
