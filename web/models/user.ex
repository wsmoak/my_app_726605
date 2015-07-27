defmodule MyApp_726605.User do
  use MyApp_726605.Web, :model

  schema "users" do
    field :name, :string
    field :email, :string
    field :user_id, :string
    field :access_token, :binary
    field :access_token_expires_at, Ecto.DateTime
    field :refresh_token, :binary

    timestamps
  end

 @required_fields ~w()
 @optional_fields ~w(name email user_id access_token access_token_expires_at refresh_token)

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
