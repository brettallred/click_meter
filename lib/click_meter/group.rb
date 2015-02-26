#Section: Datapoints Management - Groups
class ClickMeter::Group < ClickMeter::Base
  #List of all the groups associated to the user.
  get :all, '/groups'

  #Get the specified group
  get :find, '/groups/:id'

  #Get the count of groups. You can use the same filtering parameters of "/groups"
  get :count, '/groups/count'

  #Create a group through a POST request
  post :create, '/groups'

  #Update the specified group
  post :save, '/groups/:id'

  #Delete a group (cascading to datapoints)
  delete :destroy, '/groups/:id'

  #Create a datapoint through a POST request inside this group
  post :datapoint, '/groups/:id/datapoints'

  #List of all the datapoints associated to the user in this group
  get :datapoints, '/groups/:id/datapoints'

end