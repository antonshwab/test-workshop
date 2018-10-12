defmodule Mixfile do
  use Mix.Project

  def project do
    [
      app: :workshop,
      version: "0.0.1",
      elixir: "~> 1.7",
      deps: deps(),
      dialyzer: [paths: ["services/app/_build/dev"]]
    ]
  end

  defp deps do
    [
      {:credo, "~> 0.8", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.0.0-rc.3", only: [:dev], runtime: false}
    ]
  end
end
