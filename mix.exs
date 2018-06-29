defmodule Passphrase.Mixfile do
  use Mix.Project

  def project do
    [
      app: :passphrase,
      version: "0.1.0",
      elixir: "~> 1.6",
      deps: deps(),
      description: """
      Passphrase generates secure, random, easy-to-remember
      passphrases consisting of space-separated simple English words.
      """,
      package: package(),
      name: "Passphrase",
      source_url: "https://github.com/edbedbe/passphrase/",
    ]
  end

  def package do
    [
      name: :passphrase,
      licenses: ["MIT"],
      maintainers: ["Eli Bierman"],
      links: %{"Source Code" => "https://github.com/edbedbe/passphrase/"},
    ]
  end

  def deps do
    [
      {:ex_doc, "~> 0.16", only: :dev, runtime: false},
    ]
  end
end
