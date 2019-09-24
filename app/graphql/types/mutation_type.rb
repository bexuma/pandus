Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createApplication, function: Mutations::ApplicationCreate.new
end
