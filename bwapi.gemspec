require 'date'
require File.dirname(__FILE__) + '/lib/bwapi/version'

Gem::Specification.new do |s|
  s.name        = 'bwapi'
  s.version     = BWAPI::VERSION
  s.version     = BWAPI::VERSION + ".pre.#{ENV['TRAVIS_BUILD_NUMBER']}" if ENV['TRAVIS']
  s.date        = Date.today.to_s
  s.summary     = 'Brandwatch API Wrapper'
  s.description = 'A Ruby wrapper for the Brandwatch API'
  s.author      = 'Jonathan Chrisp'
  s.email       = 'jonathan@brandwatch.com'
  s.license     = 'MIT'
  s.homepage    = 'https://github.com/jonathanchrisp/bwapi'
  s.required_ruby_version = '>= 1.9.2'

  s.add_development_dependency 'rspec', '~> 3.0.0'
  s.add_development_dependency 'rubocop', '~> 0.24.1'

  s.add_runtime_dependency 'allotment', '~> 1.1.0'
  s.add_runtime_dependency 'faraday', '~> 0.9.0'
  s.add_runtime_dependency 'faraday_middleware', '~> 0.9.1'
  s.add_runtime_dependency 'faraday_middleware-parse_csv', '~> 0.1'
  s.add_runtime_dependency 'faraday_middleware-parse_oj', '~> 0.3.0'
  s.add_runtime_dependency 'oj', '~> 2.11.0'

  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_paths = ['lib']
end
