defmodule LanguageList do
  @moduledoc false

  def new do
    []
  end

  def add(list, lang) do
     [lang | list]
  end

  def remove(list) do
    [_ | tail] = list
    tail
  end

  def first(list) do
    [hd | _] = list
    hd
  end

  def count(list) do
    length(list)
  end

  def exciting_list?(list) do
    "Elixir" in list
  end
end
