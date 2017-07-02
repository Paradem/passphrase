defmodule PassphraseTest do
  use ExUnit.Case
  doctest Passphrase

  test "the truth" do
    p = Passphrase.new()
    len = String.length(p)
    assert len > 9 && len < 35
  end
end
