# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-github/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Michael Bleigh']
  gem.email         = ['michael@intridea.com']
  gem.description   = 'Official OmniAuth strategy for GitHub.'
  gem.summary       = 'Official OmniAuth strategy for GitHub.'
  gem.homepage      = 'https://github.com/intridea/omniauth-github'
  gem.license       = 'MIT'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = 'omniauth-github'
  gem.require_paths = ['lib']
  gem.version       = OmniAuth::GitHub::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  # Nothing lower than omniauth-oauth2 1.1.1
  # http://www.rubysec.com/advisories/CVE-2012-6134/
  gem.add_dependency 'omniauth-oauth2', '>= 1.1.1', '< 2.0'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end
