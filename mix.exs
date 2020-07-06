defmodule SevenottersPersistence.MixProject do
  use Mix.Project

  def project do
    [
      app: :sevenotters_persistence,
      version: "0.1.2",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs
      name: "Seven Otters Persistence Interface",
      source_url: "https://github.com/sevenotters",
      homepage_url: "https://www.sevenotters.org",
      docs: docs(),

      # Package
      description: "To support for different persistence type in Seven Otters.",
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp docs do
    [
      main: "getting_started",
      logo: "markdown/icon.png",
      extras: ["markdown/getting_started.md"]
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Nicola Fiorillo"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/sevenotters/sevenotters_persistence"}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.1", only: :dev, runtime: false},
      {:ex_doc, "~> 0.21", only: :dev, runtime: false}
    ]
  end
end
