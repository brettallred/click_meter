#Section: Datapoints Management - Datapoints
class ClickMeter::Datapoint < ClickMeter::Base
  #List of all the datapoints associated to the user
  # Response
  # {
  #  :entities => [
  #    {:id => 123, :uri => "string"}, {:id => 321:uri => "string"}
  #  ]
  #}
  get :all, '/datapoints'

  #Get the count of datapoints.
  # Response:
  # {
  #   :count => "integer"
  # }
  get :count, '/datapoints/count'

  #Create a datapoint
  # Response:
  # :id   => "integer"
  # :uri  => "string"
  # :name => "string
  #
  post :create, '/datapoints'

  #Get the specified datapoint
  # Response:
  # {
  #     :creationDate => "string",
  #     :domainId => "integer",
  #     :groupId => "integer",
  #     :id => "integer",
  #     :name => "string",
  #     :preferred => "boolean",
  #     :status => "string",
  #     :encodeIp => "boolean",
  #     :firstConversionId => "integer",
  #     :fullName => "string",
  #     :isSecured => "boolean",
  #     :notes => "string",
  #     :tags => "list[number]",
  #     :title => "string",
  #     :secondConversionId => "integer",
  #     :trackingCode => "string",
  #     :type => "integer",
  #     :typeTL => {
  #       :domainId => "integer",
  #       :redirectType => "integer",
  #       :url => "string",
  #       :destinationMode => "integer",
  #       :encodeUrl => "boolean",
  #       :expirationDate => "string",
  #       :hideUrl => "boolean",
  #       :hideUrlTitle => "string",
  #       :password => "string",
  #       :urlAfterExpiration => "string",
  #       :browserBaseDestinationItem => [
  #         {
  #           :emailDestinationUrl => "string",
  #           :mobileDestinationUrl => "string",
  #           :spidersDestinationUrl => "string"
  #         }
  #       ],
  #       :randomDestinationItems => [
  #         {
  #           :url => "string",
  #           :languageCode => "string"
  #         }
  #       ],
  #       :sequentialDestinationItems => [
  #         {
  #           :url => "string",
  #           :languageCode => "string"
  #         }
  #       ],
  #       :urlsByLanguage => [
  #         {
  #           :url => "string",
  #           :languageCode => "string"
  #         }
  #       ]
  #    },
  #    :typeTP => {}
  # }
  get :find, '/datapoints/:id'

  #Delete a datapoint
  # Response
  # :id => 7711
  # :uri => "string"
  delete :destroy, '/datapoints/:id'

  #Update the specified datapoint
  # Response:
  # :id   => "integer"
  # :uri  => "string"
  # :name => "string
  #
  post :save, '/datapoints/:id'
end
