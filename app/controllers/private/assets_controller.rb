module Private
  class AssetsController < BaseController
    skip_before_action :auth_member!, only: [:index]

    def index
      @cny_assets  = Currency.assets('cny')
      @btc_proof   = Proof.current :btc
      @mtr_proof   = Proof.current :mtr
      @brc_proof   = Proof.current :brc
      @ltc_proof   = Proof.current :ltc
      @cny_proof   = Proof.current :cny

      if current_user
        @btc_account = current_user.accounts.with_currency(:btc).first
        @mtr_account = current_user.accounts.with_currency(:mtr).first
        @brc_account = current_user.accounts.with_currency(:brc).first
        @ltc_account = current_user.accounts.with_currency(:ltc).first
        @cny_account = current_user.accounts.with_currency(:cny).first
      end
    end

    def partial_tree
      account    = current_user.accounts.with_currency(params[:id]).first
      @timestamp = Proof.with_currency(params[:id]).last.timestamp
      @json      = account.partial_tree.to_json.html_safe
      respond_to do |format|
        format.js
      end
    end

  end
end
