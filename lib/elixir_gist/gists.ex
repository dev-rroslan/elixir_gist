defmodule ElixirGist.Gists do
  @moduledoc """
  The Gists context.
  """

  import Ecto.Query, warn: false
  alias ElixirGist.Repo

  alias ElixirGist.Gists.Gist

  @doc """
  Returns the list of gists.

  ## Examples

      iex> list_gists()
      [%Gist{}, ...]

  """
  def list_gists do
    Repo.all(Gist)
  end

  @doc """
  Gets a single gist.

  Raises `Ecto.NoResultsError` if the Gist does not exist.

  ## Examples

      iex> get_gist!(123)
      %Gist{}

      iex> get_gist!(456)
      ** (Ecto.NoResultsError)

  """
  def get_gist!(id), do: Repo.get!(Gist, id)

  @doc """
  Creates a gist.

  ## Examples

      iex> create_gist(%{field: value})
      {:ok, %Gist{}}

      iex> create_gist(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_gist(user, attrs \\ %{}) do
    user
    |> Ecto.build_assoc(:gists)
    |> Gist.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a gist.

  ## Examples

      iex> update_gist(gist, %{field: new_value})
      {:ok, %Gist{}}

      iex> update_gist(gist, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_gist(%Gist{} = gist, attrs) do
    gist
    |> Gist.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a gist.

  ## Examples

      iex> delete_gist(gist)
      {:ok, %Gist{}}

      iex> delete_gist(gist)
      {:error, %Ecto.Changeset{}}

  """
  def delete_gist(%Gist{} = gist) do
    Repo.delete(gist)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking gist changes.

  ## Examples

      iex> change_gist(gist)
      %Ecto.Changeset{data: %Gist{}}

  """
  def change_gist(%Gist{} = gist, attrs \\ %{}) do
    Gist.changeset(gist, attrs)
  end

  alias ElixirGist.Gists.SaveGist

  @doc """
  Returns the list of saved_gists.

  ## Examples

      iex> list_saved_gists()
      [%SaveGist{}, ...]

  """
  def list_saved_gists do
    Repo.all(SaveGist)
  end

  @doc """
  Gets a single save_gist.

  Raises `Ecto.NoResultsError` if the Save gist does not exist.

  ## Examples

      iex> get_save_gist!(123)
      %SaveGist{}

      iex> get_save_gist!(456)
      ** (Ecto.NoResultsError)

  """
  def get_save_gist!(id), do: Repo.get!(SaveGist, id)

  @doc """
  Creates a save_gist.

  ## Examples

      iex> create_save_gist(%{field: value})
      {:ok, %SaveGist{}}

      iex> create_save_gist(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_save_gist(user, attrs \\ %{}) do
    user
    |> Ecto.build_assoc(:saved_gists)
    |> SaveGist.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a save_gist.

  ## Examples

      iex> update_save_gist(save_gist, %{field: new_value})
      {:ok, %SaveGist{}}

      iex> update_save_gist(save_gist, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_save_gist(%SaveGist{} = save_gist, attrs) do
    save_gist
    |> SaveGist.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a save_gist.

  ## Examples

      iex> delete_save_gist(save_gist)
      {:ok, %SaveGist{}}

      iex> delete_save_gist(save_gist)
      {:error, %Ecto.Changeset{}}

  """
  def delete_save_gist(%SaveGist{} = save_gist) do
    Repo.delete(save_gist)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking save_gist changes.

  ## Examples

      iex> change_save_gist(save_gist)
      %Ecto.Changeset{data: %SaveGist{}}

  """
  def change_save_gist(%SaveGist{} = save_gist, attrs \\ %{}) do
    SaveGist.changeset(save_gist, attrs)
  end
end
