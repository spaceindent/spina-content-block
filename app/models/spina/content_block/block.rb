require_dependency 'spina/content_block'

module Spina
  class ContentBlock::Block < ApplicationRecord
    translates :title, :description
  end
end
