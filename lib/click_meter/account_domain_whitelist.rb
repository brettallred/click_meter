#Seciton: Accounting - Blacklist
class ClickMeter::AccountDomainWhitelist < ClickMeter::Base
  #List domains whitelist for this account. Valid only for master key. Maximum 50 elements.
  get :all, '/account/domainwhitelist'

  #Add a new domain in whitelist. Valid only for master key. Maximum 50 elements.
  post :create, '/account/domainwhitelist'

  #Delete a domain from whitelist. Valid only for master key
  delete :destroy, '/account/domainwhitelist/:hash'
end