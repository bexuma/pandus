Types::Application = GraphQL::ObjectType.define do
  name 'Application'

  field :id,          !types.ID
  field :title,       !types.String
  field :description, !types.String
  field :address,     !types.String
  field :longitude,   types.Float
  field :latitude,    types.Float

end