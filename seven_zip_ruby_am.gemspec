# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'seven_zip_ruby/version'

Gem::Specification.new do |spec|
  spec.name          = "seven_zip_ruby_am"
  spec.version       = SevenZipRuby::VERSION
  spec.authors       = ["Masamitsu MURASE"]
  spec.email         = ["masamitsu.murase@gmail.com"]
  spec.description   = %q{SevenZipRuby (seven_zip_ruby_am) is a ruby gem library to read and write 7zip archives. This gem library calls official 7z.dll internally. This is a fork that does not have the <2.4 restriction branching off of commit 5ff474204e752dfffb0e417be50a88e866a6ccc4.}
  spec.summary       = %q{This is a ruby gem library to read and write 7zip files.}
  spec.homepage      = "https://github.com/amunoz951/seven_zip_ruby"
  spec.license       = "LGPL + unRAR"

  spec.files         = `git ls-files`.split($/).select{ |i| !(i.start_with?("pkg") || i.start_with?("resources")) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  if (RUBY_ENGINE == "rbx")
    spec.add_development_dependency "rubysl"
    spec.add_development_dependency "rubysl-singleton"
    spec.add_development_dependency "rubysl-abbrev"
    spec.add_development_dependency "rubysl-irb"
  end

  spec.extensions << "ext/seven_zip_ruby/extconf.rb"
end
