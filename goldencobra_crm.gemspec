$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "goldencobra_crm/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "goldencobra_crm"
  s.version     = GoldencobraCrm::VERSION
  s.authors     = ["Holger Frohloff"]
  s.email       = ["holger@ikusei.de"]
  s.homepage    = "http://www.goldencobra.de"
  s.summary     = "A Customer Relationship Managment extension for Goldencobra CMS"
  s.description = "Manage all you customers, with history et. al."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["CC-LICENSE", "Rakefile", "README.markdown"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.2"
  s.add_dependency "goldencobra"
  s.add_development_dependency "mysql2"
  s.add_development_dependency "annotate"
  s.add_development_dependency "guard-annotate"
  s.add_development_dependency "pry"
end
