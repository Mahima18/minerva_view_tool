
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "minerva_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "minerva_view_tool"
  spec.version       = MinervaViewTool::VERSION
  spec.authors       = ["Mahima Patel"]
  spec.email         = ["mahimapatel54@gmail.com"]

  spec.summary       = %q{Various view specific methods for applications I use.}
  spec.description   = %q{Provides generated HTML data for Rails applications.}
  spec.homepage      = "https://minerva.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f| 
    f.match(%r{^(test|spec|features)/}) 
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "bundler", "~> 2.2.14"
  spec.add_dependency "rake", "~> 13.0"
  spec.add_dependency "rspec", "~> 5.0.0"
end
