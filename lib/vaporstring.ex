defmodule Vaporstring do
  @moduledoc """
  Documentation for Vaporstring.
  """

  @doc """
  Parse a string and returns its vaporwave equivalent.

  ## Examples

      iex> Vaporstring.parse("topkek")
      "ｔｏｐｋｅｋ"

      iex> Vaporstring.parse("Agnese")
      "Ａｇｎｅｓｅ"

  """
  def parse(text) do
    String.graphemes(text)
    |> Enum.map(fn x -> Vaporstring.Graphemes.glyph(x) end)
    |> Enum.join()
  end
end
