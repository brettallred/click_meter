#Section: Datapoints Management - Conversions
class ClickMeter::Conversion < ClickMeter::Base
  #Creates conversion
  # Response:
  # :id => 7711,
  # :uri => "/conversions/7711"
  # :name => "string"  (optional)
  post :create, '/conversions'

  #List of all the conversions associated to the user
  # Response:
  # {"entities"=>[
  #      {"id"=>7709, "uri"=>"/conversions/7709"},
  #     {"id"=>7710, "uri"=>"/conversions/7710"},
  #     {"id"=>7711, "uri"=>"/conversions/7711"}
  #   ]
  # }
  get :all, '/conversions'

  #Delete a conversion
  #Response:
  # :id => 7711,
  # :uri => "/conversions/7711"
  # :name => "string"  (optional)
  delete :destroy, '/conversions/:id'

  #Get the specified conversion.
  #Response:
  # :id           => 7710
  # :name         => "string"
  # :code         => "B73D5EFC063B487A829A73B3BB21E9F6"
  # :description  => "string"
  # :creationDate => "20150225152245"
  # :value        => 0.0
  get :find, '/conversions/:id'

  #Update the specified conversion
  # Response:
  # :id => 7711,
  # :uri => "/conversions/7711"
  # :name => "string"  (optional)
  post :save, '/conversions/:id'

  #Get a count of the conversions. You can use the same filters as "/conversions"
  #Response:
  #:count => 1
  get :count, '/conversions/count'
end
