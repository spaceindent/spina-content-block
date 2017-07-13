require 'rails_helper'

RSpec.describe Spina::ContentBlock::BlocksController, type: :controller do
  routes { Spina::Engine.routes }
  describe 'GET #show' do
    it 'presents a block'
  end
end
