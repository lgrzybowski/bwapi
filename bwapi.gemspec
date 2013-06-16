Gem::Specification.new do |s|
  s.name        = 'brandwatch'
  s.version     = '1.0.0'
  s.date        = '2013-06-11'
  s.summary     = 'Brandwatch api wrapper gem'
  s.description = 'Brandwatch api gem'
  s.author      = 'Jonathan Chrisp'
  s.email       = 'jonathan@brandwatch.com'
  #s.license     = ''
  #s.homepage    = ''
  s.required_ruby_version = ">= 1.9.2"

  s.add_development_dependency 'rspec', '~> 2.13.0'
  s.add_development_dependency 'pry', '~> 0.9.12.2'
  s.add_runtime_dependency 'colored', '~> 1.2'
  s.add_dependency 'faraday', '~> 0.8.7'
  s.add_dependency 'faraday_middleware', '~> 0.9.0'
  s.add_dependency 'hashie', '~> 1.0.0'

  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_paths = ['lib']
end