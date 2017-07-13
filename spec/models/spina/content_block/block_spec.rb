require 'rails_helper'

module Spina::ContentBlock
  RSpec.describe Block, type: :model do
    let(:category) { FactoryGirl.build :spina_content_block }

    it 'is a valid object'
    it 'is persisted to the database'
  end
end
