defmodule MyApp_726605.PageController do
  use MyApp_726605.Web, :controller

  alias MyApp_726605.User

  def index(conn, %{"test" => _}) do
    changeset = User.changeset(%User{},
      %{name: "Amy Smith",
        email: "amy@example.com",
        user_id: "ABC123",
        access_token: "fjlsfj2l34h2lh2l432lj",
        refresh_token: "l4l2k34h2l234k2h97sf",
        access_token_expires_at: {{2015, 12, 31}, {12, 00, 00}}
      })
    Repo.insert!(changeset)

    render conn, "index.html"
  end

  def index(conn, _params) do
    render conn, "index.html"
  end

end
