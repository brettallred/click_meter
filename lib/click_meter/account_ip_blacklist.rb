#Section: Accounting - Whitelist
class ClickMeter::AccountIpBlacklist < ClickMeter::Base
  #List custom blacklisted IPs. Valid only for master key. Maximum 50 elements
  #Response
  # {
  #     "id": "F528764D624DB129B32C21FBCA0CB8D6",
  #     "ip": "127.0.0.1"
  # }
  get :all, '/account/ipblacklist'

  #Add a new IP in the blacklist. Valid only for master key. Maximum 50 elements
  # {
  #     "id": "94084E434024AA1B2DB3B06C7E4FA0F1",
  #     "ip": "127.0.0.3"
  # }
  post :create, '/account/ipblacklist'

  #Delete an ip in blacklist. Valid only for master key
  # {
  #     "id": "94084E434024AA1B2DB3B06C7E4FA0F1",
  #     "ip": "127.0.0.3"
  # }
  delete :destroy, '/account/ipblacklist/:hash'
end