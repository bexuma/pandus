class Mutations::ApplicationCreate < GraphQL::Function
  argument :title,       !types.String
  argument :description, !types.String
  argument :address,     !types.String

  type Types::Application

  def call(obj, args, ctx)
    application = Application.new(
      title: args[:title],
      description: args[:description],
      address: args[:address]
    )

    if application.valid?
      application.save!
      application
    else
      raise GraphQL::ExecutionError.new("Could not create the application.")
    end
    
  end
end