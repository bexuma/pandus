Types::Application = GraphQL::ObjectType.define do
  name 'Application'

  field :id,          !types.ID
  field :title,       !types.String
  field :description, !types.String

end