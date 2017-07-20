require_dependency 'spina/content_block'

module Spina
  class ContentBlock::Block < ApplicationRecord
    include Spina::ContentBlock::BlockPartable

    self.table_name = 'spina_content_blocks'

    translates :title, :description

    scope :published, -> { where(draft: false) }
    scope :draft, -> { where(draft: true) }

    has_many :block_parts, dependent: :destroy, inverse_of: :block

    accepts_nested_attributes_for :block_parts, allow_destroy: true

    alias_attribute :block_part, :part
    alias_attribute :parts, :block_parts

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :slug, presence: true
    validates :slug, uniqueness: true

    def view_template_config(theme)
      view_template_name = view_template.presence || 'block'
      theme.blocks_templates.find { |template| template[:name] == view_template_name }
    end

    def view_template_block_parts(theme)
      theme.blocks_parts.select do |block_part|
        template_config = view_template_config(theme)
        block_part[:name].in? template_config[:block_parts]
      end
    end

    def has_content?(block_part)
      content(block_part).present?
    end

    def content(block_part)
      block_part = block_parts.where(name: block_part).first
      block_part.try(:content)
    end

    def live?
      !draft? && active?
    end

  end
end
