#Seciton: Accounting
class ClickMeter::Account < ClickMeter::Base
  # Attributes
  # :email            => "brett@nuvi.com",
  # :firstName        => "Brett",
  # :registrationDate => "20150216140408",
  # :timezone         => 82,
  # :timezonename     => "Mountain Standard Time",
  # :boGoVal          => "LRQEtv8QYDvPbn41NZNvNA%3d%3d"


  # Retrieves the account data based on the Auth Key
  #
  # Response are the attributes above
  get :take, "/account"

  # Retrieves the account data based on the Auth Key
  #
  # Any of the attributes above will be saved
  post :save, '/account'
end
