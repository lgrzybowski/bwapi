[![Gem Version](https://badge.fury.io/rb/bwapi.png)](http://badge.fury.io/rb/bwapi)
[![Build Status](https://travis-ci.org/jonathanchrisp/bwapi.png?branch=master)](https://travis-ci.org/jonathanchrisp/bwapi)
[![Dependency Status](https://gemnasium.com/jonathanchrisp/bwapi.png)](https://gemnasium.com/jonathanchrisp/bwapi)
[![Code Climate](https://codeclimate.com/github/jonathanchrisp/bwapi.png)](https://codeclimate.com/github/jonathanchrisp/bwapi)
[![Coverage Status](https://coveralls.io/repos/jonathanchrisp/bwapi/badge.png?branch=master)](https://coveralls.io/r/jonathanchrisp/bwapi?branch=master)

# bwapi
A Ruby interface to the Brandwatch API.

## Documentation
http://rubydoc.info/gems/bwapi/

## Getting Started
All Brandwatch API calls at present require you to be authenticated, therefore you'll need to create an instance of a bwapi client and call the login method immediately:

```ruby
bw = BWAPI::Client.new(username: 'username@example.com', password: 'pa$$w0rd')
bw.login
```

The API returns the oauth/token response with your authentication details.

## Examples
Once authenticated, you are then able to make additional requests. The bwapi gem will automatically add your access token to subsequent request headers.

Please see an example projects response below:

```ruby
bw.projects
{
  "resultsTotal"=>-1,
  "resultsPage"=>-1,
  "resultsPageSize"=>-1,
  "results"=>[
    { "id"=>1856280126,
      "name"=>"Demo Project",
      "description"=>nil,
      "clientId"=>1856278873,
      "defaultLangCodes"=>["en"],
      "defaultIndustry"=>"general-(recommended)",
      "creatorUserId"=>158304410,
      "creationDate"=>"2013-07-24T17:56:31.074+0000",
      "links"=> {
        "queries"=>"http://newapi.brandwatch.com//projects/1856280126/queries.json?access_token=xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
      },
      "clientName"=>"JC BWAPI Demo"
    }
  ]
}
```

## Debug Mode
In order to see additional logging and performance information you can enable debug mode by passing this in as an option when creating your client instance:

```ruby
bw = BWAPI::Client.new(username: 'username@example.com', password: 'pa$$w0rd', debug: true)
```

### Logging
Any log output will be written to STDOUT unless you define a logger:

```ruby
bw = BWAPI::Client.new(username: 'username@example.com', password: 'pa$$w0rd', debug: true, logger: Logger.new('main.log'))
```

### Performance
When debug mode is running the response performance is stored on each require, to view the stats call the performance method on the client instance:

```ruby
bw.performance
{
  "post_oauth_token"=>[0.125019],
  "get_me"=> [0.048003, 0.034587, 0.038165, 0.10304]
}
```

Please note that only successful responses are recorded. Any request which raises an error is ignored.

## Contributing
If you would like to contribute to this project please see the [contributing guidelines](https://github.com/jonathanchrisp/bwapi/blob/staging/CONTRIBUTING.md).

## Tests
There are a number of unit tests which are included as part of this project, please run:

```ruby
rspec spec
```

Please note that a number of tests still need to be added so I don't currently have complete coverage, subject to workload these will be slowly added over the next few months.

## Feedback
I would be more than happy to recieve feedback, please email me at: jonathan.chrisp@gmail.com or jonathan@brandwatch.com
