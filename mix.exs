defmodule HTTPotion.Cache.Mixfile do
  use Mix.Project

  def project do
    [ app: :httpotion_cache,
      name: "HTTPotion.Cache",
      source_url: "https://github.com/dmitryzuev/httpotion_cache",
      version: "0.1.0",
      elixir: "~> 1.1",
      docs: [ extras: ["README.md"] ],
      description: description(),
      deps: deps(),
      package: package() ]
  end

  def application do
    [ applications: [ :httpotion, :cachex ] ]
  end

  defp description do
    """
    Extension to HTTPotion for caching http requests.
    """
  end

  defp deps do
    [ {:httpotion, "~> 3.0"},
      {:cachex, "~> 2.0"},
      {:ex_doc, "~> 0.12", only: [:dev, :test, :docs]} ]
  end

  defp package do
    [ files: [ "lib", "mix.exs", "README.md", "LICENSE" ],
      maintainers: [ "Dmitry Zuev" ],
      licenses: [ "LICENSE" ],
      links: %{ "GitHub" => "https://github.com/dmitryzuev/httpotion_cache" } ]
  end
end
