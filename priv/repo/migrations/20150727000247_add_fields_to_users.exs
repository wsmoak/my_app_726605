defmodule MyApp_726605.Repo.Migrations.AddFieldsToUsers do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :user_id, :string
      add :access_token, :binary
      add :access_token_expires_at, :datetime
      add :refresh_token, :binary
    end
  end
end
