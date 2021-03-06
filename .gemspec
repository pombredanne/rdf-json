#!/usr/bin/env ruby -rubygems
# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.version            = File.read('VERSION').chomp
  gem.date               = File.mtime('VERSION').strftime('%Y-%m-%d')

  gem.name               = 'rdf-json'
  gem.homepage           = 'http://ruby-rdf.github.com/rdf-json'
  gem.license            = 'Public Domain' if gem.respond_to?(:license=)
  gem.summary            = 'RDF/JSON support for RDF.rb.'
  gem.description        = 'RDF.rb plugin for parsing/serializing RDF/JSON data.'
  gem.rubyforge_project  = 'rdf'

  gem.author             = 'Arto Bendiken'
  gem.email              = 'public-rdf-ruby@w3.org'

  gem.platform           = Gem::Platform::RUBY
  gem.files              = %w(AUTHORS CREDITS README UNLICENSE VERSION etc/doap.json) + Dir.glob('lib/**/*.rb')
  gem.bindir             = %q(bin)
  gem.executables        = %w()
  gem.default_executable = gem.executables.first
  gem.require_paths      = %w(lib)
  gem.extensions         = %w()
  gem.test_files         = %w()
  gem.has_rdoc           = false

  gem.required_ruby_version      = '>= 1.9.2'
  gem.requirements               = []
  gem.add_runtime_dependency     'rdf',       '>= 1.1.0'
  gem.add_development_dependency 'rdf-spec',  '>= 1.1.0'
  gem.add_development_dependency 'rdf-isomorphic'
  gem.add_development_dependency 'rspec',     '>= 2.14'
  gem.add_development_dependency 'yard' ,     '>= 0.8.5'

  # Rubinius has it's own dependencies
  if RUBY_ENGINE == "rbx" && RUBY_VERSION >= "2.1.0"
    gem.add_runtime_dependency     "rubysl-json"
    gem.add_development_dependency "rubysl-prettyprint"
  end

  gem.post_install_message       = nil
end
