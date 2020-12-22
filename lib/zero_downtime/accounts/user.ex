defmodule ZeroDowntime.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :name, :string
    field :full_name, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name])
    |> validate_required([:name])
    |> insert_full_name()
  end

  defp insert_full_name(changeset) do
    if changeset.valid? do
      name = get_change(changeset, :name)

      changeset
      |> put_change(:full_name, name)
    else
      changeset
    end
  end
end
