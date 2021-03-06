# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'car_model/version'

Gem::Specification.new do |spec|
  spec.name          = 'car_model'
  spec.version       = CarModel::VERSION
  spec.authors       = ['Piotr Szmielew']
  spec.email         = ['piotr.szmielew@coderslab.pl']

  spec.summary       = 'Very simple datastore for learning on\
                        Ruby on Rails course.'
  spec.homepage      = 'TODO: Put your gem\'s website or public repo URL here.'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  raise 'RubyGems 2.0 or newer required' unless spec.respond_to?(:metadata)
  spec.metadata['allowed_push_host'] = 'TODO'

  files = `git ls-files -z`.split("\x0")

  spec.files         = files.reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = %w(lib)

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop'
end
