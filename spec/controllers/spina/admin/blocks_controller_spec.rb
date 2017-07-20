require 'rails_helper'

RSpec.describe Spina::Admin::ContentBlocksController, type: :controller do
  routes { Spina::Engine.routes }

  context 'signed in as an admin' do
    before(:each) { sign_in }

    describe 'GET #index' do
      it 'displays a list of blocks' do
        blocks = [
          create(:spina_content_block),
          create(:spina_content_block),
          create(:spina_content_block)]

        get :index
        expect(assigns(:blocks)).to eq blocks
      end
    end
  end
end
