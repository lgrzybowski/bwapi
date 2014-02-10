require File.dirname(__FILE__) + "/lib/bwapi/version"

Gem::Specification.new do |s|
  s.name        = 'bwapi'
  s.version     = BWAPI::VERSION
  s.version     = BWAPI::VERSION + ".pre.#{ENV['TRAVIS_BUILD_NUMBER']}" if ENV['TRAVIS']
  s.date        = '2014-02-10'
  s.summary     = 'Brandwatch API Wrapper'
  s.description = 'A Ruby wrapper for the Brandwatch API'
  s.author      = 'Jonathan Chrisp'
  s.email       = 'jonathan@brandwatch.com'
  s.license     = 'MIT'
  s.homepage    = 'https://github.com/jonathanchrisp/bwapi'
  s.required_ruby_version = ">= 1.9.2"

  s.add_development_dependency 'rspec', '~> 2.13.0'

  s.add_runtime_dependency 'colored', '~> 1.2'
  s.add_runtime_dependency 'faraday', '~> 0.8.7'
  s.add_runtime_dependency 'faraday_middleware', '~> 0.9.0'
  s.add_runtime_dependency 'hashie', '~> 2.0.5'
  s.add_runtime_dependency 'multi_json', '~> 1.8.2'
  s.add_runtime_dependency 'netrc', '~> 0.7.7'

  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_paths = ['lib']
end