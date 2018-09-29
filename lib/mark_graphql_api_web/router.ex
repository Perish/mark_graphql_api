defmodule MarkGraphqlApiWeb.Router do
  use MarkGraphqlApiWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
    plug(MarkGraphqlApiWeb.Plugs.Context)
  end

  scope "/api" do
    pipe_through(:api)

    forward("/graphql", Absinthe.Plug, schema: MarkGraphqlApiWeb.Schema)

    if Mix.env() == :dev do
      forward("/graphiql", Absinthe.Plug.GraphiQL, schema: MarkGraphqlApiWeb.Schema)
    end
  end
end
