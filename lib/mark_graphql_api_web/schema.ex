defmodule MarkGraphqlApiWeb.Schema do
  use Absinthe.Schema

  alias MarkGraphqlApiWeb.Resolvers

  import_types(MarkGraphqlApiWeb.Schema.Types)

  # import Types

  query do
    @desc "Get a list of all users"
    field :users, list_of(:user_type) do
      resolve(&Resolvers.UserResolver.users/3)
    end
  end

  mutation do
    @desc "Register a new user"
    field :register_user, :user_type do
      arg(:input, non_null(:user_input_type))
      resolve(&Resolvers.UserResolver.register_user/3)
    end
  end

  # subscription do
  # end
end
