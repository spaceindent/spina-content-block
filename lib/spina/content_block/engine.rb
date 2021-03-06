require 'spina'

module Spina
  module ContentBlock
    class Engine < ::Rails::Engine
      isolate_namespace Spina::ContentBlock

      initializer "register plugin" do
        ::Spina::Plugin.register do |plugin|
          plugin.name = "content_block"
          plugin.namespace = 'content_block'
        end
      end

      config.generators do |g|
        g.test_framework :rspec, fixture: false
        g.fixture_replacement :factory_girl, dir: 'spec/factories'
        g.assets false
        g.helper false
      end

    end
  end
end
