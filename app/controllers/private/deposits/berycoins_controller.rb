module Private
  module Deposits
    class BerycoinsController < ::Private::Deposits::BaseController
      include ::Deposits::CtrlCoinable
    end
  end
end
