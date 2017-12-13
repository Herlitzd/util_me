defmodule UtilMe.Accounts.Roommate do
  use Ecto.Schema
  import Ecto.Changeset
  alias UtilMe.Accounts.Roommate


  schema "roommates" do
    belongs_to(:user, Utilshare.Accounts.User)
    belongs_to(:household, Utilshare.Accounts.Household)

    timestamps()
  end

  @doc false
  def changeset(%Roommate{} = roommate, attrs) do
    roommate
    |> cast(attrs, [])
    |> validate_required([])
  end
end
