# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'whynot/version'

Gem::Specification.new do |spec|
  spec.name          = "whynot"
  spec.version       = Whynot::VERSION
  spec.authors       = ["Jason Lewis", "Micah Gates"]
  spec.email         = ["jason@decomplecting.org", "micah@mgates.com"]
  spec.summary       = %q{Monkey patches Kernel. For lulz. And for _why day!}
  spec.description   = %q{Right now, it just adds Kernel#maybe which takes a block, and executes it. Or not.}
  spec.homepage      = "https://github.com/ruby-jokes/whynot"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.0.0"
end
