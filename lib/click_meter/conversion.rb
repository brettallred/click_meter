class ClickMeter::Conversion < ClickMeter::Base
  post :create, '/conversions'
  get :all, '/conversions'
  delete :destroy, '/conversions/:id'
  get :find, '/conversions/:id'
  post :save, '/conversions/:id'
  get :count, '/conversions/count'
end
