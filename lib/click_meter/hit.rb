#Section: Reports - Hits Lists
class ClickMeter::Hit < ClickMeter::Base
  #A detailed hits list for the last 90 days maximum (conversion)
  get :conversion, '/conversions/:id/hits'

  #A detailed hits list for the last 90 days maximum (customer)
  get :customer, '/hits'

  #A detailed hits list for the last 90 days maximum (datapoint)
  get :datapoint, '/datapoints/:id/hits'

  #A detailed hits list for the last 90 days maximum (group)
  get :group, '/groups/:id/hits'
end