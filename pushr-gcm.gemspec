$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'pushr-gcm/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'pushr-gcm'
  s.version     = PushrGcm::VERSION
  s.authors     = ['Tom Pesman']
  s.email       = ['tom@tnux.net']
  s.homepage    = 'https://github.com/9to5/pushr-gcm'
  s.summary     = 'GCM (Android) part of the modular push daemon.'
  s.description = 'GCM support for the modular push daemon.'

  s.test_files    = `git ls-files -- {test,spec,features}/*`.split('\n')
  s.files         = `git ls-files lib`.split("\n") + ['README.md', 'MIT-LICENSE']
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency 'multi_json', '~> 1.0'
  s.add_dependency 'pushr-core'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rspec-nc'
  s.add_development_dependency 'guard'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'mock_redis'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'webmock', '< 1.16'
  s.add_development_dependency 'vcr'
end
