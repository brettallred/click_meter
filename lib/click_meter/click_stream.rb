#Section: Reports - ClickStream
class ClickMeter::ClickStream < ClickMeter::Base
  #Return the clickstream for the desired object.
  get :find, '/clickstream'
end