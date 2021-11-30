defmodule LanguageListTest do
  use ExUnit.Case
  doctest LanguageList

  describe "new/0" do
    test "returns an empty list" do
      assert LanguageList.new() == []
    end
  end

  describe "add/2" do
    test "adds languages to a list" do
      assert LanguageList.new()
             |> LanguageList.add("Clojure")
             |> LanguageList.add("Haskell")
             == ["Haskell", "Clojure"]
    end
  end

  describe "remove/1" do
    test "removes the first element" do
      assert LanguageList.new()
             |> LanguageList.add("Clojure")
             |> LanguageList.add("Haskell")
             |> LanguageList.remove()
             == ["Clojure"]
    end
  end

  describe "first/1" do
    test "returns the first element" do
      assert LanguageList.new()
             |> LanguageList.add("Clojure")
             |> LanguageList.add("Haskell")
             |> LanguageList.first()
             == "Haskell"
    end
  end

  describe "count/1" do
    test "returns the number of elements in a list" do
      assert LanguageList.new()
             |> LanguageList.add("Clojure")
             |> LanguageList.add("Haskell")
             |> LanguageList.count() == 2
    end
  end

  describe "exciting_list?/1" do
    test "returns a boolean value depending on inclusions" do
      assert LanguageList.new()
             |> LanguageList.add("Elixir")
             |> LanguageList.add("Haskell")
             |> LanguageList.exciting_list? == true

      assert LanguageList.new()
             |> LanguageList.add("Haskell")
             |> LanguageList.exciting_list? == false
    end
  end
end
