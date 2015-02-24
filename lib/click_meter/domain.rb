class ClickMeter::Domain < ClickMeter::Base
  post :create, '/domains'
  get :all, '/domains',
  delete :destroy, '/domains/:id'
  get :find, '/domains/:id'
  post :save, '/domains/:id'
  get :count, '/domains/count'
end
