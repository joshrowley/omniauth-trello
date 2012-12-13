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
  gem.summary       = %q{OAuth 1.0 Strategy for Trello}
  gem.homepage      = ""

  gem.add_runtime_dependency  'omniauth'
  gem.add_runtime_dependency  'omniauth-oauth'
  gem.add_runtime_dependency  'oauth'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
