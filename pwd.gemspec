# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pwd/version'

Gem::Specification.new do |spec|

  spec.name          = "pwd"
  spec.version       = PWD::VERSION
  spec.authors       = ["Adam Luzsi"]
  spec.email         = ["adamluzsi@gmail.com"]
  spec.license       = 'Apache License 2.0'

  spec.summary       = %q{Look up for project root folder based on conventions}
  spec.description   = %q{Look up for project root folder based on conventions}
  spec.homepage      = "https://github.com/adamluzsi/pwd.rb"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  # spec.bindir        = "exe"
  # spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"

end
