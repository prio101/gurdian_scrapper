defmodule GurdianScrapperTest do
  use ExUnit.Case
  doctest GurdianScrapper

  test "should save into some file" do
    file = File.open!("test.txt", [:write, :utf8])
    str = "Hello World"
    GurdianScrapper.save_into_txt_file(str, file)
    assert File.read("test.txt") == {:ok, "Hello World, \n"}
  end
end

