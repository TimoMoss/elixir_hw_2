defmodule PacMan do
  @moduledoc false

  def eat_ghost?(touch_pellet, touch_dot) do
    touch_pellet and touch_dot
  end

  def score?(touch_pellet, touch_dot) do
    touch_pellet or touch_dot
  end

  def lose?(pellet_active, touch_ghost) do
    not pellet_active and touch_ghost
  end

  def win?(dots_eaten, pellet_active, touch_ghost) do
    dots_eaten and not lose?(pellet_active, touch_ghost)
  end
end
