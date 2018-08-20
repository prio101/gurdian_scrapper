defmodule GurdianScrapper do
  @moduledoc """
  Documentation for GurdianScrapper.
  """

  @doc """
  Hello world.

  ## Examples

  """
  def start_and_fetch_response do
    IO.puts "starting"
    HTTPoison.start
    url = 'https://www.theguardian.com/books/table/2011/apr/21/literary-clock'
    case HTTPoison.get(url) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        file = File.open!("data_save_scrapped.txt", [:write, :utf8])
        parse_by_id(body, 0, file)
      {:ok, %HTTPoison.Response{status_code: 404}} ->
        IO.puts "Not found :("
      {:error, %HTTPoison.Error{reason: reason}} ->
        IO.inspect reason
    end
  end

  def save_into_txt_file(data, file) do    
    IO.binwrite(file, data <>", \n" )
  end

  def parse_by_id(body, n, file) when n <= 934 do
    by_td_data(body, n, file)
    parse_by_id(body, n + 1, file)
  end

  def parse_by_id(_body, _n, file) do
    File.close file
  end

  def by_td_data(body, i, file) do
    Enum.each(0..4, fn j ->
      body
      |> Floki.find("#table-cell-7619-#{i}-#{j}")
      |> Floki.text
      |> (fn x -> save_into_txt_file(x, file) end).()    
    end)
  end
end
