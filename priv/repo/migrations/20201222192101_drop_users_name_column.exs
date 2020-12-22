defmodule ZeroDowntime.Repo.Migrations.DropUsersNameColumn do
  use Ecto.Migration

  def change do
    alter table("users") do
      remove :name, :string
    end
  end
end
