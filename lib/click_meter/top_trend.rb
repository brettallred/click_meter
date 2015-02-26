#Section: Reports - Top Trends
class ClickMeter::TopTrend < ClickMeter::Base
  #Get conversion top report
  get :conversion, '/conversions/:id/reports'

  #Get datapoint top report
  get :datapoint, '/datapoints/:id/reports'

  #Get group top report
  get :group, '/groups/:id/reports'

  #Get reports information for every entity related to the customer
  get :customer, '/reports'

end