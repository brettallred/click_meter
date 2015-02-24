class ClickMeter::Account < ClickMeter::Base
  get :take, "/account"
  post :save, '/account'
end
