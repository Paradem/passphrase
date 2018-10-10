defmodule PassphraseTest do
  use ExUnit.Case
  doctest Passphrase

  test "passphrase is right amount of words" do
    p = Passphrase.new(5)
    assert length(String.split(p, " ")) == 5
    p = Passphrase.new(3)
    assert length(String.split(p, " ")) == 3
  end

  test "separator can be passed in" do
    p = Passphrase.new(2, "-")
    assert String.contains?(p, "-")
    assert !String.contains?(p, " ")

    # Default is space
    assert String.contains?(Passphrase.new(2), " ")
  end
end
