require 'coveralls'
Coveralls.wear!
require 'bwapi'

RSpec.configure do |config|
  config.color_enabled  = true
  config.formatter      = :documentation
end