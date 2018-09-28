defmodule MarkGraphqlApiWeb.Router do
  use MarkGraphqlApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MarkGraphqlApiWeb do
    pipe_through :api
  end
end
