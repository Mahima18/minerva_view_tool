# frozen_string_literal: true
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH,include?(lib)
require "minerva_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "minerva_view_tool"
  spec.version       = MinervaViewTool::VERSION
  spec.authors       = ["Mahima"]
  spec.email         = ["mahimapatel54@gmail.com"]

  spec.summary       = "Various view specific methods for applications I use."
  spec.description   = "Provides generated HTML data for Rails applications."
  spec.homepage      = "https://minerva.com"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_developement_dependency "bundler", "~> 2.2.14"
  spec.add_developement_dependency "rake", "~> 13.0"
  # spec.add_developement_dependency "bundler", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
