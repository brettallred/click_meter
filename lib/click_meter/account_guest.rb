class ClickMeter::AccountGuest < ClickMeter::Base
  #Guest list account. Access only for master key.
  # Response:
  # {"entities"=>[
  #      {"id"=>7709, "uri"=>"string"},
  #     {"id"=>7710, "uri"=>"string"}
  #   ]
  # }
  get :all, '/account/guests'

  #Guest detail. Access only for master key
  #Response
  #{
  #     "apikey": "string",
  #     "id": "integer",
  #     "name": "string",
  #     "password": "string",
  #     "timeZone": "integer",
  #     "dateFormat": "string",
  #     "decimalSeparator": "string",
  #     "language": "string",
  #     "numberGroupSeparator": "string"
  #}
  get :find, '/account/guest/:id'

  #Delete a guest
  delete :destroy, '/account/guest/:id'

  #A list of permission that guest have
  # Response
  # [
  #     {
  #       "type": "string",
  #       "entity": {
  #         "id": "integer",
  #         "uri": "string",
  #         "name": "string"
  #       }
  #     }
  # ]
  get :permissions, '/account/guests/:id/permissions'

  #Add / remove permission
  put :permission, '/account/guests/:id/:type/patch'
end