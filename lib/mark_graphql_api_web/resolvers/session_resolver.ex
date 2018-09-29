defmodule MarkGraphqlApiWeb.Resolvers.SessionResolver do
  alias MarkGraphqlApi.Accounts.Session
  alias MarkGraphqlApi.Guardian

  def login_user(_, %{input: input}, _) do
    with {:ok, user} <- Session.authenticate(input),
         {:ok, jwt_token, _} <- Guardian.encode_and_sign(user) do
      {:ok, %{token: jwt_token, user: user}}
    end
  end
end
