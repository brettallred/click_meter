#Section: Datapoints Management - Tags
class ClickMeter::Tag < ClickMeter::Base
  #List of all the tags associated to the user
  get :all, '/tags'

  #Get the specified tag
  get :find, '/tags/:id'

  #Get a count of the tags. You can use the same filters of "/tags"
  get :count, '/tags/count'

  #Create a tag associated to the current user
  post :create, '/tags'

  #Delete a tag
  delete :destroy, '/tag/:id'

  #Patch a tag to be assigned or removed from a datapoint
  put :datapoint, '/tags/:id/datapoints/patch'

  #Patch a tag to be assigned or removed from a group
  put :group, '/tags/:id/groups/patch'

  #List of all the datapoints associated to the user and to the selected tag
  get :datapoints, '/tags/:id/datapoints'

  #List of all the groups associated to the user and to the selected tag
  get :groups, '/tags/:id/groups'
end