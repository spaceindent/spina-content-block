module Spina
  module Admin
    class ContentBlock::BlocksController < AdminController
      before_action :set_breadcrumb
      before_action :set_locale

      layout 'spina/admin/block'
    end
  end
end
