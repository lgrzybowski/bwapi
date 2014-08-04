require 'simplecov'
require 'coveralls'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  Coveralls::SimpleCov::Formatter,
  SimpleCov::Formatter::HTMLFormatter,
]

SimpleCov.start
require 'bwapi'

RSpec.configure do |config|
  config.color = true
end

def fixture_path
  File.expand_path('../fixtures', __FILE__)
end
