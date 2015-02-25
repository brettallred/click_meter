class ClickMeter::Domain < ClickMeter::Base
  #Create a new personal domain to use in your datapoints
  # Response:
  # :id   => "integer"
  # :uri  => "string"
  # :name => "string"
  #
  post :create, '/domains'

  #List domains to which is possible to register a datapoint
  # Response
  # {
  #  :entities => [
  #    {:id => 123, :uri => "string"}, {:id => 321, :uri => "string"}
  #  ]
  #}
  get :all, '/domains'

  #Delete a domain from listing
  # Response
  # :id => 7711
  # :uri => "string"
  delete :destroy, '/domains/:id'

  #Get the detail about a domain
  # Response:
  # :id   => "integer"
  # :uri  => "string"
  # :name => "string"
  get :find, '/domains/:id'

  #Update a domain object
  # Response:
  # :id   => "integer"
  # :uri  => "string"
  # :name => "string"
  post :save, '/domains/:id'

  #Get a count of domains available
  # Response:
  # {
  #   :count => "integer"
  # }
  get :count, '/domains/count'
end
