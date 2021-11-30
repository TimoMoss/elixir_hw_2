defmodule PacManTest do
  use ExUnit.Case
  doctest PacMan

  describe "eat_ghost?/2" do
    test "checks if pacman able to eat ghosts" do
      assert PacMan.eat_ghost?(false, true) == false
    end
  end

  describe "score?/2" do
    test "checks if pacman is scored" do
      assert PacMan.score?(true, true) == true
    end
  end

  describe "lose?/2" do
    test "checks if pacman loses" do
      assert PacMan.lose?(false, true) == true
    end
  end

  describe "win?/3" do
    test "checks if pacman wins" do
      assert PacMan.win?(false, true, false) == false
    end
  end
end
