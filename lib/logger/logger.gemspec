begin
  require_relative "lib/logger/version"
rescue LoadError # Fallback to load version file in ruby core repository
  require_relative "version"
end

Gem::Specification.new do |spec|
  spec.name          = "logger"
  spec.version       = Logger::VERSION
  spec.authors       = ["Naotoshi Seo", "SHIBATA Hiroshi"]
  spec.email         = ["sonots@gmail.com", "hsbt@ruby-lang.org"]

  spec.summary       = %q{Provides a simple logging utility for outputting messages.}
  spec.description   = %q{Provides a simple logging utility for outputting messages.}
  spec.homepage      = "https://github.com/ruby/logger"
  spec.licenses      = ["Ruby", "BSD-2-Clause"]

  spec.files         = Dir.glob("lib/**/*.rb") + ["logger.gemspec", "BSDL", "COPYING"]
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.5.0"

  spec.metadata["changelog_uri"] = spec.homepage + "/releases"
end
