defmodule Vaporstring.MixProject do
  use Mix.Project

  def project do
    [
      app: :vaporstring,
      version: "1.0.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      source_url: "https://github.com/dottorblaster/vaporstring",
      homepage_url: "https://github.com/dottorblaster/vaporstring",
      deps: deps(),
      package: package(),
      description: description()
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
      {:credo, "~> 1.3.0", only: [:dev, :test]},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp description do
    "A module that parses your strings into ｖａｐｏｒｗａｖｅ"
  end

  defp package do
    [
      maintainers: ["Alessio Biancalana"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/dottorblaster/vaporstring"
      }
    ]
  end
end
