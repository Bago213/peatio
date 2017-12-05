module Admin
  module Withdraws
    class MateriacoinsController < ::Admin::Withdraws::BaseController
      load_and_authorize_resource :class => '::Withdraws::Materiacoin'

      def index
        start_at = DateTime.now.ago(60 * 60 * 24)
        @one_materiacoins = @materiacoins.with_aasm_state(:accepted).order("id DESC")
        @all_materiacoins = @materiacoins.without_aasm_state(:accepted).where('created_at > ?', start_at).order("id DESC")
      end

      def show
      end

      def update
        @materiacoin.process!
        redirect_to :back, notice: t('.notice')
      end

      def destroy
        @materiacoin.reject!
        redirect_to :back, notice: t('.notice')
      end
    end
  end
end
