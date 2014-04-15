lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hapir/version'

Gem::Specification.new do |s|
  s.name        = 'hapir'
  s.version     = Hapir::Version
  s.license     = 'MIT'
  s.summary     = "HubSpot ruby API wrapper"
  s.description = "HubSpot ruby API wrapper"
  s.authors     = ["Andrew Jorgensen"]
  s.email       = 'andrew@andrewjorgensen.com'
  s.files       += Dir.glob('./lib/**/*.rb')
  s.files       += Dir.glob('./spec/**/*.rb')
  s.homepage    = 'https://github.com/ajorgensen/hapir'

  s.add_development_dependency('rspec')
  s.add_development_dependency('pry')
end
