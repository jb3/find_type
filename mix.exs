defmodule FindType.Mixfile do
  use Mix.Project

  def project do
    [
      app: :find_type,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      description: "Simple package to find the type of an item in Elixir",
      # ExDoc stuff.
      name: "FindType",
      source_url: "https://github.com/JoeBanks13/find_type",
      docs: [main: "FindType",
             extras: ["README.md"]],
      # Hex stuff
      package: [
        name: "find_type",
        licenses: ["MIT"],
        maintainers: [
          "Joseph Banks <joseph@josephbanks.me>"
        ],
        links: %{"GitHub" => "https://github.com/JoeBanks13/find_type"}
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.16", only: :dev, runtime: false}
    ]
  end
end
