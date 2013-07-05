require 'coveralls'
require 'simplecov'

require 'bwapi'

SimpleCov.formatter = Coveralls::SimpleCov::Formatter
SimpleCov.start

RSpec.configure do |config|
  config.color_enabled  = true
  config.formatter      = :documentation
end