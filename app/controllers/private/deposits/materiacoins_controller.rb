module Private
  module Deposits
    class MateriacoinsController < ::Private::Deposits::BaseController
      include ::Deposits::CtrlCoinable
    end
  end
end
