# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'focuslight/version'

Gem::Specification.new do |spec|
  spec.name          = "focuslight"
  spec.version       = Focuslight::VERSION
  spec.authors       = ["TAGOMORI Satoshi"]
  spec.email         = ["tagomoris@gmail.com"]
  spec.description   = %q{Ruby port of GrowthForecast}
  spec.summary       = %q{Lightning Fast Graphing/Visualization}
  spec.homepage      = "https://github.com/tagomoris/focuslight"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-nav"

  spec.add_runtime_dependency "rake" #TODO: daemon execution without rake
  spec.add_runtime_dependency "dotenv"
  spec.add_runtime_dependency "foreman"

  spec.add_runtime_dependency "sinatra"
  spec.add_runtime_dependency "sinatra-contrib"
  spec.add_runtime_dependency "erubis"
  spec.add_runtime_dependency "unicorn"

  spec.add_runtime_dependency "sequel"
  spec.add_runtime_dependency "sqlite3"
  spec.add_runtime_dependency "mysql2"
  spec.add_runtime_dependency "librrd"
  spec.add_runtime_dependency "rrd-ffi"
end
