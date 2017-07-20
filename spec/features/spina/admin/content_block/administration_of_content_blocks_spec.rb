require 'rails_helper'

RSpec.feature "Administration of Content Blocks", type: :feature do
  context 'logged in' do
    before(:each) { sign_in }
    describe 'listing blocks' do
      it 'shows published blocks by default' do
        fb = create(:spina_content_block)
        sb = create(:spina_content_block)
        visit '/admin/content_blocks'
        expect(page).to have_content(fb.title)
        expect(page).to have_content(sb.title)
      end

      it 'hides draft blocks' do
        draft = create(:spina_content_block, :draft)
        visit '/admin/content_blocks'
        click_on I18n.t('spina.content_blocks.published')
        expect(page).not_to have_content(draft.title)
      end
    end

    describe 'draft blocks' do
      it 'shows draft blocks' do
        draft = create(:spina_content_block, :draft)
        visit '/admin/content_blocks'
        click_on I18n.t('spina.content_blocks.draft')
        expect(page).to have_content(draft.title)
      end

      it 'hides published the blocks' do
        published = create(:spina_content_block)
        visit '/admin/content_blocks'
        click_on I18n.t('spina.content_blocks.draft')
        expect(page).not_to have_content(published.title)
      end

    end
  end
end
