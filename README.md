# GurdianScrapper

**TODO: Few More changes**
- Add new test cases

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `gurdian_scrapper` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:gurdian_scrapper, "~> 0.1.0"}
  ]
end
```
`cd` to project dir and later run these commands
```elixir
> cd ./to_project
> iex -S mix
>> GurdianScrapper.start_and_finish_scrapping
```
this will regenerate the scrapped file inside the main directory. Named `data_save_scrapped.txt` 

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/gurdian_scrapper](https://hexdocs.pm/gurdian_scrapper).

