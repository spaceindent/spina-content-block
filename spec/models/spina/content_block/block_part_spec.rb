require 'rails_helper'

module Spina::ContentBlock
  RSpec.describe BlockPart, type: :model do
    let(:part) { FactoryGirl.build :spina_content_block_part }

    subject { part }

    it 'is a valid object'
    it 'is persisted to the database'
  end
end
