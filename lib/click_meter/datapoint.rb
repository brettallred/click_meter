class ClickMeter::Datapoint < ClickMeter::Base
  get :all, '/datapoints'
  get :count, '/datapoints/count'
  post :create, '/datapoints'
  get :find, '/datapoints/:id'
  delete :destroy, '/datapoints/:id'
  post :save, '/datapoints/:id'
end
