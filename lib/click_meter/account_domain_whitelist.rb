#Seciton: Accounting - Blacklist
class ClickMeter::AccountDomainWhitelist < ClickMeter::Base
  #List domains whitelist for this account. Valid only for master key. Maximum 50 elements.
  # {
  #     "entities": [
  #       {
  #         "id": "0A137B375CC3881A70E186CE2172C8D1",
  #         "name": "www.google.com"
  #       }
  #     ]
  # }
  get :all, '/account/domainwhitelist'

  #Add a new domain in whitelist. Valid only for master key. Maximum 50 elements.
  # {
  #     "id": "F74D39FA044AA309EAEA14B9F57FE79C",
  #     "name": "gmail.com"
  # }
  post :create, '/account/domainwhitelist'

  #Delete a domain from whitelist. Valid only for master key
  # {
  #     "id": "0A137B375CC3881A70E186CE2172C8D1",
  #     "name": "www.google.com"
  # }
  delete :destroy, '/account/domainwhitelist/:hash'
end