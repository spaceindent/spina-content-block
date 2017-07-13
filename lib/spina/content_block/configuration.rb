module Spina
  module ContentBlock
    include ActiveSupport::Configurable

    config_accessor :title, :controller, :description, :spina_icon, :plugin_type

    self.title = 'Content Block'
    self.controller = 'blocks'
    self.description = 'Reusable Content Blocks for SpinaCMS'
    self.spina_icon = 'pencil-outline'

    self.plugin_type = 'website_resource'
  end
end
