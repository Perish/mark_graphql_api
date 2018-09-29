defmodule MarkGraphqlApiWeb.Schema.Types do
  use Absinthe.Schema.Notation

  alias __MODULE__

  import_types(Types.Usertype)
  import_types(Types.SessionType)
end
