defmodule GurdianScrapper.MixProject do
  use Mix.Project

  def project do
    [
      app: :gurdian_scrapper,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :httpoison, :hound]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      {:httpoison, "~> 1.0"},
      {:floki, "~> 0.20.0"},
      {:hound, "~> 1.0"},
      {:bypass, "~> 0.8", only: :test}
    ]
  end
end