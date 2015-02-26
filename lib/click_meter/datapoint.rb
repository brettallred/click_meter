#Section: Datapoints Management - Datapoints
class ClickMeter::Datapoint < ClickMeter::Base
  #List of all the datapoints associated to the user
  # Response
  # {
  #  :entities => [
  #    {:id => 123, :uri => "string"}, {:id => 321:uri => "string"}
  #  ]
  #}
  get :all, '/datapoints'

  #Get the count of datapoints.
  # Response:
  # {
  #   :count => "integer"
  # }
  get :count, '/datapoints/count'

  #Create a datapoint
  # Response:
  # {
  #     "id": 2027499,
  #     "uri": "/datapoints/2027499"
  # }
  post :create, '/datapoints'

  #Get the specified datapoint
  # Response:
  # {
  #     "id": 2027499,
  #     "name": "string",
  #     "title": "string",
  #     "notes": "string",
  #     "trackingCode": "http://string/string",
  #     "tags": [],
  #     "groupId": 191837,
  #     "groupName": "string",
  #     "creationDate": "20150226140413",
  #     "typeTL": {
  #       "url": "http://typeTL.url.com",
  #       "firstUrl": "",
  #       "redirectType": 301,
  #       "domainId": 2112,
  #       "password": "string"
  #     }
  # }
  get :find, '/datapoints/:id'

  #Delete a datapoint
  # Response
  # {
  #     "id": 2027499,
  #     "uri": "/datapoints/2027499"
  # }
  delete :destroy, '/datapoints/:id'

  #Update the specified datapoint
  # Response:
  # {
  #     "id": 2027645,
  #     "uri": "/datapoints/2027645"
  # }
  post :save, '/datapoints/:id'
end
