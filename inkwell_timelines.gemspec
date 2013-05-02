$:.push File.expand_path("../lib", __FILE__)

require "inkwell_timelines/version"

Gem::Specification.new do |s|
  s.name        = "inkwell_timelines"
  s.version     = InkwellTimelines::VERSION
  s.authors     = ["Sergey Sokolov"]
  s.email       = ["sokolov.sergey.a@gmail.com"]
  s.homepage    = "https://github.com/salkar/inkwell_timelines#inkwell-timelines"
  s.summary     = "Helper for creating timelines with load content while scrolling"
  s.description = "Helper for creating timelines with load content while scrolling"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.1.0"
  s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "database_cleaner"
end
