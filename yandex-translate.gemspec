lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yandex-translate/version'

Gem::Specification.new do |spec|
  spec.name          = "yandex-translate"
  spec.version       = Yandex::Translate::VERSION
  spec.authors       = ["Sergey Moyseenko"]
  spec.email         = ["cherrer@mail.ru"]
  spec.summary       = %q{Library to yanddex translate API}
  spec.description   = %q{Yandex translate API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
