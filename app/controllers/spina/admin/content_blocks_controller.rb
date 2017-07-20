module Spina
  module Admin
    class ContentBlocksController < AdminController
      include Spina::ContentBlock

      before_action :set_breadcrumb
      before_action :set_locale
      before_action :set_tabs, only: [:new, :create, :edit, :update]

      layout 'spina/admin/content_block'

      def index
        @blocks = case(params[:filter])
        when 'draft'
          Block.draft
        else
          Block.published
        end
      end

      private def set_locale
        @locale = params[:locale] || I18n.default_locale
      end

      private def set_breadcrumb
        add_breadcrumb I18n.t('spina.content_blocks.blocks'), spina.admin_pages_path
      end

      private def set_tabs
        @tabs = %w{block_content advanced}
      end

      private def block_params
        params.require(:block).permit!.merge(locale: params[:locale] || I18n.default_locale)
      end

    end
  end
end
