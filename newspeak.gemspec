$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "newspeak/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "newspeak"
  s.version     = Newspeak::VERSION
  s.authors     = ["Tomek Mańko"]
  s.email       = ["jaennirin@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "A Rails gem for interactive translation using i18n."
  s.description = "Newspeak supports a live translation of marked parts of webpage with any i18n backing storage."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0"
  s.add_dependency "i18n", "~> 0.6.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec"
  s.add_development_dependency "stylus"
end
