defmodule ElixirGist.GistsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ElixirGist.Gists` context.
  """

  @doc """
  Generate a gist.
  """
  def gist_fixture(attrs \\ %{}) do
    {:ok, gist} =
      attrs
      |> Enum.into(%{
        description: "some description",
        markup_text: "some markup_text",
        name: "some name"
      })
      |> ElixirGist.Gists.create_gist()

    gist
  end

  @doc """
  Generate a save_gist.
  """
  def save_gist_fixture(attrs \\ %{}) do
    {:ok, save_gist} =
      attrs
      |> Enum.into(%{

      })
      |> ElixirGist.Gists.create_save_gist()

    save_gist
  end
end
