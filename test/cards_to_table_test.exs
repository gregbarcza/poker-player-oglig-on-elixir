defmodule CardsToTableTest do
  use ExUnit.Case
  doctest CardsToTable

  test "convert() should work" do
    game_state = "fixtures/game-state-1.json" |> File.read!() |> Poison.decode!()
    player = game_state["players"] |> Enum.at(1)

    IO.puts(CardsToTable.convert(player["hole_cards"]))
  end

  test "poison parse example" do
    IO.puts(File.cwd!())
    json = File.read!("preflop-table.json")
    parsed_json = Poison.decode!(json)

    # parsed_json |> Enum.each(fn(table) -> IO.puts(table["cards"]) end)
  end
end
