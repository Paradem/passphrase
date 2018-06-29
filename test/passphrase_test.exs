defmodule PassphraseTest do
  use ExUnit.Case
  doctest Passphrase

  test "passphrase is right amount of words" do
    p = Passphrase.new(5)
    assert length(String.split(p, " ")) == 5
    p = Passphrase.new(3)
    assert length(String.split(p, " ")) == 3
  end
end
