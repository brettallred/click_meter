#Section: Datapoints Management - Domains
class ClickMeter::Domain < ClickMeter::Base
  #Create a new personal domain to use in your datapoints
  # Response:
  # {
  #     "id": 2113,
  #     "uri": "/domains/2113"
  # }
  post :create, '/domains'

  #List domains to which is possible to register a datapoint
  # Response
  # {
  #     "entities": [
  #      {
  #          "id": 1921,
  #          "uri": "/domains/1921"
  #      },
  #      {
  #          "id": 2084,
  #          "uri": "/domains/2084"
  #      }
  #     ]
  # }

  get :all, '/domains'

  #Delete a domain from listing
  # Response
  # {
  #     "id": 2113,
  #     "uri": "/domains/2113"
  # }
  delete :destroy, '/domains/:id'

  #Get the detail about a domain
  # Response:
  # {
  #     "id": 1921,
  #     "name": "s87.eu"
  # }
  get :find, '/domains/:id'

  #Update a domain object
  # Response:
  # {
  #     "id": 2114,
  #     "uri": "/domains/2114"
  # }
  post :save, '/domains/:id'

  #Get a count of domains available
  # Response:
  # {
  #   :count => 2
  # }
  get :count, '/domains/count'
end
