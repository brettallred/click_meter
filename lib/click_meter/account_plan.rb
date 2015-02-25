class ClickMeter::AccountPlan < ClickMeter::Base
  # Retrieve Customer's Plan
  # Response:
  # :name                   => "Small"
  # :recurring              => true
  # :recurringPeriod        => 1
  # :maximumDatapoints      => 100
  # :monthlyEvents          => 1000
  # :profileId              => 1
  # :billingPeriodStart     => "20150225000000"
  # :billingPeriodEnd       => "20150325000000"
  get :take, '/account/plan'
end
