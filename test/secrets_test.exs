defmodule SecretsTest do
  use ExUnit.Case
  doctest Secrets

  describe "secret_add/1" do
    test "returns a correctly working add function" do
      adder = Secrets.secret_add(2)
      assert is_function(adder)  == true
      assert adder.(2) == 4
    end
  end

  describe "secret_subtract/1" do
    test "returns a correctly working function" do
      subtractor = Secrets.secret_subtract(2)
      assert is_function(subtractor)  == true
      assert subtractor.(3) == 1
    end
  end

  describe "secret_multiply/1" do
    test "returns a correctly working function" do
      multiplier = Secrets.secret_multiply(7)
      assert is_function(multiplier)  == true
      assert multiplier.(3) == 21
    end
  end

  describe "secret_divide/1" do
    test "returns a correctly working  function" do
      divider = Secrets.secret_divide(3)
      assert is_function(divider)  == true
      assert divider.(32) == 10
    end
  end

  describe "secret_and/1" do
    test "returns a correctly working function" do
      ander = Secrets.secret_and(1)
      assert is_function(ander)  == true
      assert ander.(2) == 0
    end
  end

  describe "secret_xor/1" do
    test "returns a correctly working function" do
      xorer = Secrets.secret_xor(1)
      assert is_function(xorer)  == true
      assert xorer.(3) == 2
    end
  end

  describe "secret_combine/2" do
    test "returns a correctly working bitwise combine function" do
      multiply = Secrets.secret_multiply(7)
      divide = Secrets.secret_divide(3)
      result = Secrets.secret_combine(multiply, divide )
      assert is_function(result)  == true
      assert result.(6) == 14
    end
  end
end
