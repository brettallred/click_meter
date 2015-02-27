#Section: Datapoints Management - Groups
class ClickMeter::Group < ClickMeter::Base
  #List of all the groups associated to the user.
  # {
  #     "entities": [
  #       {
  #         "id": 189630,
  #         "uri": "/groups/189630"
  #       },
  #       {
  #         "id": 189628,
  #         "uri": "/groups/189628"
  #       },
  #     ]
  # }
  get :all, '/groups'

  #Get the specified group
  # {
  #     "id": 191837,
  #     "name": "string",
  #     "creationDate": "20150226135112",
  #     "tags": [
  #       {
  #         "id": 20518,
  #         "name": "string"
  #       }
  #     ]
  # }
  get :find, '/groups/:id'

  #Get the count of groups. You can use the same filtering parameters of "/groups"
  # {
  #     "count": 3
  # }
  get :count, '/groups/count'

  #Create a group through a POST request
  # {
  #     "id": 192071,
  #     "uri": "/groups/192071"
  # }
  post :create, '/groups'

  #Update the specified group
  # {
  #     "id": 191837,
  #     "uri": "/groups/191837"
  # }
  post :save, '/groups/:id'

  #Delete a group (cascading to datapoints)
  # {
  #     "id": 191837,
  #     "uri": "/groups/191837"
  # }
  delete :destroy, '/groups/:id'

  #Create a datapoint through a POST request inside this group
  # {
  #     "id": 2028437,
  #     "uri": "/datapoints/2028437"
  # }
  post :datapoint, '/groups/:id/datapoints'

  #List of all the datapoints associated to the user in this group
  # {
  #     "entities": [
  #       {
  #         "id": 2028366,
  #         "uri": "/datapoints/2028366"
  #       }
  #     ]
  # }
  get :datapoints, '/groups/:id/datapoints'

end