# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "skip-exception-notifing"
  spec.version       = "0.1.0"
  spec.authors       = ["Alexander Smirnov"]
  spec.email         = ["begdory4@gmail.com"]

  spec.summary       = ""
  spec.description   = ""
  spec.homepage      = ""

  spec.files         = %w(lib/skip_exception_notifing.rb)
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'exception_notification'

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
end
