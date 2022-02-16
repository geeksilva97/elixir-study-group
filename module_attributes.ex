defmodule ModuleAttributes do
  @moduledoc """
  My module with attributes demo
  """
  @pi 3.14 # as constant

  # using as annotation
  @best_movie "Inglorious Basterds"
  @doc """
  Testing doc
  """
  def the_best_movie1, do: @best_movie

  @best_movie "The Hangover"
  def the_best_movie2, do: @best_movie

  defp the_best_movie2 do
    "Private"
  end
end
