
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ipis/version"

Gem::Specification.new do |spec|
  spec.name          = "ipis"
  spec.version       = Ipis::VERSION
  spec.authors       = ["Josh Brody"]
  spec.email         = ["josh@josh.mn"]

  spec.summary       = "Command line tool for ipinfo.io"
  spec.description   = "Command line tool for ipinfo.io"
  spec.homepage      = "https://github.com/joshmn/ipis"

  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/joshmn/ipis"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]
  spec.executables   = ["ipis"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "http"
end
