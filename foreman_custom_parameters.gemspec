$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "foreman_custom_parameters/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "foreman_custom_parameters"
  s.version     = ForemanCustomParameters::VERSION
  s.authors     = ["Joseph Magen"]
  s.email       = ["jmagen@redhat.com"]
  s.homepage    = "http://github.com/theforeman/foreman_custom_parameters"
  s.summary     = "Foreman plugin to improve storage of custom information in parameters"
  s.description = "Foreman plugin to improve storage of custom information in parameters"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]
end
