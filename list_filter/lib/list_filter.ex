defmodule ListFilter do
  import Integer

  def call(list) do
    list
    |> Enum.map(&to_integer(&1))
    |> Enum.filter(&is_number(&1))
    |> Enum.count(&is_odd(&1))
  end

  def to_integer(str) do
    case Integer.parse(str) do
      {int, ""} ->
        int

      _ ->
        :nan
    end
  end
end
