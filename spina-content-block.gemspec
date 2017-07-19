$:.push File.expand_path("../lib", __FILE__)

require "spina/content_block/version"

Gem::Specification.new do |s|
  s.name        = "spina-content-block"
  s.version     = Spina::ContentBlock::VERSION
  s.authors     = ["Michael Wawra"]
  s.email       = ["michael+gems@spaceindent.com"]
  s.homepage    = "https://github.com/spaceindent/spina-content-block"
  s.summary     = "Content Blocks for Spina CMS"
  s.description = "Reusable blocks of content that can be rendered on multiple pages of a SpinaCMS site. Based on existing page partables, and super easy to implement."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*_spec.rb"]

  s.add_runtime_dependency 'spina', '~> 0.11', '>= 0.11.1'
  s.add_runtime_dependency 'kaminari', '~> 1.0.1', '>= 1.0.1'
  s.add_development_dependency 'pg', '~> 0.21', '>= 0.21'
  s.add_development_dependency 'simplecov', '~> 0'
  s.add_development_dependency 'rspec-rails', '~> 3.6.0', '>= 3.6.0'
  s.add_development_dependency "factory_girl_rails", "~> 4.0"
  s.add_development_dependency 'pry-rails', '~> 0'
  s.add_development_dependency 'rails-controller-testing', '~> 1.0.2', '>= 1.0.2'
  s.add_development_dependency 'capybara', '~> 2.14.3', '>= 2.14.3'
  s.add_development_dependency 'faker', '~> 1.8.4'
end
