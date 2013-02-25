# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-trello/version'

Gem::Specification.new do |gem|
  gem.name          = "omniauth-trello"
  gem.version       = Omniauth::Trello::VERSION
  gem.authors       = ["Josh Rowley"]
  gem.email         = ["joshua.f.rowley@gmail.com"]
  gem.description   = %q{OAuth 1.0 Strategy for Trello}
  gem.summary       = %q{An OAuth 1.0 Strategy for Trello that abstracts the OAuth flow using the Omniauth gem}
  gem.homepage      = "https://github.com/joshrowley/omniauth-trello"

  gem.add_runtime_dependency      'omniauth', '~> 1.0'
  gem.add_runtime_dependency      'omniauth-oauth', '~> 1.0'
  gem.add_runtime_dependency      'oauth', '~> 0.4'
  gem.add_dependency              'multi_json', '~>  1.5'
  gem.add_development_dependency  'simplecov', '~> 0.7'
  gem.add_development_dependency  'rspec', '~> 2.12'
  gem.add_development_dependency  'rack-test'
  gem.add_development_dependency  'webmock'
  gem.add_development_dependency  'rake'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
