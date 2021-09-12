require_relative 'lib/zigzagcase/version'

Gem::Specification.new do |spec|
  spec.name          = "zgzgcase"
  spec.version       = Zigzagcase::VERSION
  spec.authors       = ["Ndagi Stanley"]
  spec.email         = ["ndagis@gmail.com"]

  spec.summary       = %q{MaKe sTrInGs lOoK LiKe tHiS}
  spec.description   = %q{Alternates uppercase and lowercase across letters}
  spec.homepage      = "https://github.com/CIRCLECI-GWP/zigzagcase"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/CIRCLECI-GWP/zigzagcase"
  spec.metadata["changelog_uri"] = "https://github.com/CIRCLECI-GWP/zigzagcase/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
