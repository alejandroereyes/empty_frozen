# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "empty_frozen/version"

Gem::Specification.new do |spec|
  spec.name          = "empty_frozen"
  spec.version       = EmptyFrozen::VERSION
  spec.authors       = ["alejandroereyes"]
  spec.email         = ["alejandroereyes@gmail.com"]

  spec.summary       = %q{Empty Frozen}
  spec.description   = %q{For those times when you just need to return an empty object}
  spec.homepage      = "https://github.com/alejandroereyes/empty_frozen"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
