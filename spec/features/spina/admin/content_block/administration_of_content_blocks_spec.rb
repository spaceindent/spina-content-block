require 'rails_helper'

RSpec.feature "Administration of Content Blocks", type: :feature do
  context 'logged in' do
    before(:each) { sign_in }
    describe 'listing blocks' do
      it 'shows all the blocks' do
        fb = create(:spina_content_block, title: 'First Block')
        sb = create(:spina_content_block, title: 'Second Block')

        visit '/admin/content_blocks'
        expect(page).to have_content(fb.title)
        expect(page).to have_content(sb.title)
      end
    end
  end
end
