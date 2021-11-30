defmodule Secrets do
  @moduledoc false

  use Bitwise

  def secret_add(num) do
    fn arg -> arg + num end
  end

  def secret_subtract(num) do
    fn arg -> arg - num end
  end

  def secret_multiply(num) do
    fn arg -> arg * num end
  end

  def secret_divide(num) do
    fn arg ->
      arg / num
      |> trunc
    end
  end

  def secret_and(num) do
    fn arg -> arg &&& num end
  end

  def secret_xor(num) do
    fn arg -> Bitwise.bxor(arg, num) end
  end

  def secret_combine(f1, f2) do
    fn arg ->
      f1.(arg)
      |> f2.()
    end
  end
end
