#Section: Reports - Aggregated Stats
class ClickMeter::AggregatedStat < ClickMeter::Base
  #Get aggregated counts on daily or more
  get :conversion, '/conversions/:id/aggregated'

  #Get counts on daily or more
  get :conversion_list, '/conversions/:id/aggregated/list'

  #Get aggregated counts on conversions (daily or more) with daily breakdown
  get :conversions_list, '/conversions/aggregated/list'

  #Get aggregated counts on daily or more
  get :datapoint, '/datapoints/:id/aggregated'

  #Get counts on daily or more
  get :datapoint_list, '/datapoints/:id/aggregated/list'

  #Get aggregated counts on datapoints (daily or more) with daily breakdown
  get :datapoints_list, '/datapoints/aggregated/list'

  #Get aggregated counts on daily or more
  get :group, '/groups/:id/aggregated'

  #Get counts on daily or more
  get :group_list, '/groups/:id/aggregated/list'

  #Get a full list of datapoints with statistics based on a group
  get :group_summary, '/groups/:id/aggregated/summary'

  #Get aggregated counts on groups (daily or more) with daily breakdown
  get :groups_list, '/groups/aggregated/list'

  #Get aggregated counts on customer (daily or more).
  get :customer, '/aggregated'

  #Get aggregated counts on customer (daily or more) with daily breakdown
  get :customer_list, '/aggregated/list'

  #Get a full list of conversions with statistics based on filters
  get :conversions_summary, '/aggregated/summary/conversions'

  #Get a full list of datapoints with statistics based on filters
  get :datapoints_summary, '/aggregated/summary/datapoints'

  #Get a full list of datapoints with statistics based on groups
  get :groups_summary, '/aggregated/summary/groups'

end