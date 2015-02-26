#Seciton: Accounting
class ClickMeter::Account < ClickMeter::Base
  #Get details of the current logged account
  # Response
  # {
  #     "email": "user@example.com",
  #     "firstName": "User",
  #     "registrationDate": "20150216140408",
  #     "timezone": 82,
  #     "timezonename": "Mountain Standard Time",
  #     "boGoVal": "LRQVtv9QYDvPbn41NZNvNA%3d%3d"
  # }

  get :take, "/account"

  #Update your account data
  # Response: empty string
  post :save, '/account'
end
