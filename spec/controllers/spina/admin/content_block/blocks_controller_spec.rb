require 'rails_helper'

RSpec.describe Spina::Admin::ContentBlock::BlocksController, type: :controller do
  routes { Spina::Engine.routes }

  context 'signed in as an admin' do
    describe 'GET #index' do
      it 'displays a list of blocks'
    end
  end
end
