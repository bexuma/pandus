Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :allApplications, types[Types::Application] do
    description "List all of the applications"
    resolve ->(obj, args, ctx) {
      Application.all
    }
  end
end
