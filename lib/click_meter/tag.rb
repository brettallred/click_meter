#Section: Datapoints Management - Tags
class ClickMeter::Tag < ClickMeter::Base
  #List of all the tags associated to the user
  #Response
  # {
  #     "entities": [
  #       {
  #         "id": 20518,
  #         "uri": "/tags/20518"
  #       }
  #     ]
  # }
  get :all, '/tags'

  #Get the specified tag
  # {
  #     "id": 20518,
  #     "name": "tag_name",
  #     "datapoints": [
  #       2027645
  #     ],
  #     "groups": [
  #       189628,
  #       191837
  #     ]
  # }
  get :find, '/tags/:id'

  #Get a count of the tags. You can use the same filters of "/tags"
  #{
  # "count": 1
  # }
  get :count, '/tags/count'

  #Create a tag associated to the current user
  # {
  #     "id": 20544,
  #     "uri": "/tags/20544"
  # }
  post :create, '/tags'

  #Delete a tag
  # {
  #     "id": 20544,
  #     "uri": "/domains/20544"
  # }
  delete :destroy, '/tags/:id'

  #Patch a tag to be assigned or removed from a datapoint
  # {
  #     "id": 2027534,
  #     "uri": "/datapoints/2027534"
  # }
  put :datapoint, '/tags/:id/datapoints/patch'

  #Patch a tag to be assigned or removed from a group
  #Response
  # {
  #     "id": 189628,
  #     "uri": "/groups/189628"
  # }
  put :group, '/tags/:id/groups/patch'

  #List of all the datapoints associated to the user and to the selected tag
  # {
  #     "entities": [
  #       {
  #         "id": 2027534,
  #         "uri": "/datapoints/2027534"
  #       },
  #       {
  #           "id": 2027645,
  #           "uri": "/datapoints/2027645"
  #       }
  #     ]
  # }
  get :datapoints, '/tags/:id/datapoints'

  #List of all the groups associated to the user and to the selected tag
  # {
  #     "entities": [
  #       {
  #           "id": 189628,
  #           "uri": "/groups/189628"
  #       },
  #       {
  #           "id": 191837,
  #           "uri": "/groups/191837"
  #       }
  #     ]
  # }
  get :groups, '/tags/:id/groups'
end