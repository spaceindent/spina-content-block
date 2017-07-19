# require 'rails_helper'

module Spina::ContentBlock
  RSpec.describe BlockPart, type: :model do
    let(:part) { build :spina_content_block_part }

    it 'is a valid object' do
      expect(part).to be_valid
    end

    it 'is persisted to the database' do
      expect{ part.save }.to change(Spina::ContentBlock::BlockPart, :count).by(1)
    end

    context 'invalid object' do
      let(:part) { build :spina_content_block_part, :invalid }

      it 'is invalud' do
        expect(part).not_to be_valid
      end
    end
  end
end
