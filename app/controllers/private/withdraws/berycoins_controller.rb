module Private::Withdraws
  class BerycoinsController < ::Private::Withdraws::BaseController
    include ::Withdraws::Withdrawable
  end
end
