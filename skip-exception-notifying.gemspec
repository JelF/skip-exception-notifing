# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "skip-exception-notifying"
  spec.version       = "0.1.0"
  spec.authors       = ["Alexander Smirnov"]
  spec.email         = ["begdory4@gmail.com"]

  spec.summary       = "Adds `skip_notifying!` method to exceptions, which disables exception_notifier for it"
  spec.description   = "Adds `skip_notifying!` method to exceptions, which disables exception_notifier for it"
  spec.homepage      = "https://github.com/JelF/skip-exception-notifying"

  spec.files         = %w(lib/skip_exception_notifying.rb)
  spec.bindir        = "exe"
  spec.executables   = []
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'exception_notification'
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
end
