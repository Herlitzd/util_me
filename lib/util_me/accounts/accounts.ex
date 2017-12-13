defmodule UtilMe.Accounts do
  @moduledoc """
  The Accounts context.
  """

  import Ecto.Query, warn: false
  alias UtilMe.Repo

  alias UtilMe.Accounts.User

  @doc """
  Returns the list of users.

  ## Examples

      iex> list_users()
      [%User{}, ...]

  """
  def list_users do
    Repo.all(User)
  end

  @doc """
  Gets a single user.

  Raises `Ecto.NoResultsError` if the User does not exist.

  ## Examples

      iex> get_user!(123)
      %User{}

      iex> get_user!(456)
      ** (Ecto.NoResultsError)

  """
  def get_user!(id), do: Repo.get!(User, id)

  @doc """
  Creates a user.

  ## Examples

      iex> create_user(%{field: value})
      {:ok, %User{}}

      iex> create_user(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_user(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a user.

  ## Examples

      iex> update_user(user, %{field: new_value})
      {:ok, %User{}}

      iex> update_user(user, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_user(%User{} = user, attrs) do
    user
    |> User.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a User.

  ## Examples

      iex> delete_user(user)
      {:ok, %User{}}

      iex> delete_user(user)
      {:error, %Ecto.Changeset{}}

  """
  def delete_user(%User{} = user) do
    Repo.delete(user)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking user changes.

  ## Examples

      iex> change_user(user)
      %Ecto.Changeset{source: %User{}}

  """
  def change_user(%User{} = user) do
    User.changeset(user, %{})
  end

  alias UtilMe.Accounts.Household

  @doc """
  Returns the list of households.

  ## Examples

      iex> list_households()
      [%Household{}, ...]

  """
  def list_households do
    Repo.all(Household)
  end

  @doc """
  Gets a single household.

  Raises `Ecto.NoResultsError` if the Household does not exist.

  ## Examples

      iex> get_household!(123)
      %Household{}

      iex> get_household!(456)
      ** (Ecto.NoResultsError)

  """
  def get_household!(id), do: Repo.get!(Household, id)

  @doc """
  Creates a household.

  ## Examples

      iex> create_household(%{field: value})
      {:ok, %Household{}}

      iex> create_household(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_household(attrs \\ %{}) do
    %Household{}
    |> Household.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a household.

  ## Examples

      iex> update_household(household, %{field: new_value})
      {:ok, %Household{}}

      iex> update_household(household, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_household(%Household{} = household, attrs) do
    household
    |> Household.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Household.

  ## Examples

      iex> delete_household(household)
      {:ok, %Household{}}

      iex> delete_household(household)
      {:error, %Ecto.Changeset{}}

  """
  def delete_household(%Household{} = household) do
    Repo.delete(household)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking household changes.

  ## Examples

      iex> change_household(household)
      %Ecto.Changeset{source: %Household{}}

  """
  def change_household(%Household{} = household) do
    Household.changeset(household, %{})
  end

  alias UtilMe.Accounts.Roommate

  @doc """
  Returns the list of roommates.

  ## Examples

      iex> list_roommates()
      [%Roommate{}, ...]

  """
  def list_roommates do
    Repo.all(Roommate)
  end

  @doc """
  Gets a single roommate.

  Raises `Ecto.NoResultsError` if the Roommate does not exist.

  ## Examples

      iex> get_roommate!(123)
      %Roommate{}

      iex> get_roommate!(456)
      ** (Ecto.NoResultsError)

  """
  def get_roommate!(id), do: Repo.get!(Roommate, id)

  @doc """
  Creates a roommate.

  ## Examples

      iex> create_roommate(%{field: value})
      {:ok, %Roommate{}}

      iex> create_roommate(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_roommate(attrs \\ %{}) do
    %Roommate{}
    |> Roommate.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a roommate.

  ## Examples

      iex> update_roommate(roommate, %{field: new_value})
      {:ok, %Roommate{}}

      iex> update_roommate(roommate, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_roommate(%Roommate{} = roommate, attrs) do
    roommate
    |> Roommate.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Roommate.

  ## Examples

      iex> delete_roommate(roommate)
      {:ok, %Roommate{}}

      iex> delete_roommate(roommate)
      {:error, %Ecto.Changeset{}}

  """
  def delete_roommate(%Roommate{} = roommate) do
    Repo.delete(roommate)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking roommate changes.

  ## Examples

      iex> change_roommate(roommate)
      %Ecto.Changeset{source: %Roommate{}}

  """
  def change_roommate(%Roommate{} = roommate) do
    Roommate.changeset(roommate, %{})
  end
end
