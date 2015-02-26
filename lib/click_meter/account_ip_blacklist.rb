#Section: Accounting - Whitelist
class ClickMeter::AccountIpBlacklist < ClickMeter::Base
  #List custom blacklisted IPs. Valid only for master key. Maximum 50 elements
  get :all, '/account/ipblacklist'

  #Get information about a IP in blacklist. Valid only for master key
  get :find, '/account/ipblacklist/:hash'

  #Add a new IP in the blacklist. Valid only for master key. Maximum 50 elements
  post :create, '/account/ipblacklist'

  #Delete an ip in blacklist. Valid only for master key
  delete :destroy, '/account/ipblacklist/:hash'
end