# require 'rails_helper'

module Spina::ContentBlock
  RSpec.describe Block, type: :model do
    context 'valid object' do
      let(:block) { build :spina_content_block }

      it 'is a valid object' do
        expect(block).to be_valid
      end

      it 'is persisted to the database' do
        expect{ block.save }.to change(Spina::ContentBlock::Block, :count).by(1)
      end
    end

    context 'invlaid object' do
      let(:invalid_block) { build :spina_content_block, :invalid }

      it 'is invalid' do
        expect(invalid_block).not_to be_valid
      end

      it 'cannot be persisted to the database' do
        expect{ invalid_block.save }.not_to change(Spina::ContentBlock::Block, :count)
      end
    end

    context 'duplicate slugs' do
      it 'are invalid' do
        saved_block = create :spina_content_block, slug: 'footer'
        block = build :spina_content_block, slug: 'footer'
        expect(block).not_to be_valid
      end
    end

    context '.draft' do
      it 'only returns draft blocks' do
        draft = create(:spina_content_block, :draft)
        published = create(:spina_content_block)
        expect(Block.draft).to eq [draft]
      end
    end

    context '.published' do
      it 'only returns published blocks' do
        draft = create(:spina_content_block, :draft)
        published = create(:spina_content_block)
        expect(Block.published).to eq [published]
      end
    end

  end
end
