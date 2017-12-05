module Private::Withdraws
  class MateriacoinsController < ::Private::Withdraws::BaseController
    include ::Withdraws::Withdrawable
  end
end
