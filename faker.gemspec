$:.push File.expand_path("../lib", __FILE__)
require "faker/version"

Gem::Specification.new do |s|
  s.name        = "lbs-faker"
  s.version     = Faker::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["LogicalBricks Solutions"]
  s.email       = ["contacto@logicalbricks.com"]
  s.homepage    = "http://logicalbricks.github.com/lbs-faker"
  s.summary     = %q{Easily generate fake data}
  s.description = %q{LBS-Faker, is a fork of Faker by Benjamin Curtis, is used to easily generate fake data: names, addresses, phone numbers, etc.}

#  s.rubyforge_project = "faker"

  s.add_dependency('i18n', '~> 0.5')

  s.files         = `git ls-files -- lib/*`.split("\n") + %w(History.txt License.txt README.md)
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
