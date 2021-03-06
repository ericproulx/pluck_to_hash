# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'pluck_to_hash/version'

Gem::Specification.new do |spec|
  spec.name          = 'pluck_to_hash'
  spec.version       = PluckToHash::VERSION
  spec.authors       = ['Girish S']
  spec.email         = ['girish.sonawane@gmail.com']
  spec.summary       = 'Extend ActiveRecord pluck to return hash'
  spec.description   = 'Extend ActiveRecord pluck to return hash instead of an array. Useful when plucking multiple columns.'
  spec.homepage      = 'https://github.com/girishso/pluck_to_hash'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'activerecord', '>= 4.0.2'
  spec.add_dependency 'activesupport', '>= 4.0.2'

  spec.add_development_dependency 'pg', '~> 0.19.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency 'values'
  spec.add_development_dependency 'appraisal'
end
