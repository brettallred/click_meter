class ClickMeter::AccountGuest < ClickMeter::Base
  #Guest list account. Access only for master key.
  # Response:
  # {
  #     "entities": [
  #       {
  #           "id": 258148,
  #       "uri": "/account/guests/258148"
  #       }
  #     ]
  # }
  get :all, '/account/guests'

  #Guest detail. Access only for master key
  #Response
  # {
  #     "apiKey": "698508de-83cc-4cb1-a83f-bb9ba55706cc",
  #     "id": 258148,
  #     "name": "User",
  #     "password": "pxccsb",
  #     "email": "user@example.com",
  #     "timeZone": 82,
  #     "notes": "",
  #     "key": "ikJeRt/U2PttGYQcroYThw==",
  #     "language": "en-US",
  #     "dateFormat": "dd/MM/yyyy",
  #     "timeFormat": 1,
  #     "decimalSeparator": ".",
  #     "numberGroupSeparator": ",",
  #     "userName": "user"
  # }
  get :find, '/account/guests/:id'

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
  #Response
  # {
  #     "id": 189628,
  #     "uri": "/groups/189628"
  # }
  post :permission, '/account/guests/:id/:type/permissions/patch'
end