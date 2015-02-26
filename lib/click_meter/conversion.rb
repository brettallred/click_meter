#Section: Datapoints Management - Conversions
class ClickMeter::Conversion < ClickMeter::Base
  #Creates conversion
  # Response:
  # {
  #     "id": 7730,
  #     "uri": "/conversions/7730"
  # }
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
  # {
  #     "id": 7730,
  #     "uri": "/conversions/7730"
  # }
  delete :destroy, '/conversions/:id'

  #Get the specified conversion.
  #Response:
  # {
  #     "id": 7719,
  #     "name": "string",
  #     "code": "E5788830018D4864A90291006CB072DC",
  #     "description": "string",
  #     "creationDate": "20150225172053",
  #     "value": 0.00
  # }
  get :find, '/conversions/:id'

  #Update the specified conversion
  #Response:
  # {
  #     "id": 7730,
  #     "uri": "/conversions/7730"
  # }
  post :save, '/conversions/:id'

  #Get a count of the conversions. You can use the same filters as "/conversions"
  #Response:
  # {
  #     "count": 2
  # }
  get :count, '/conversions/count'
end
