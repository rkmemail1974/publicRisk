json.array!(@territories) do |territory|
  json.extract! territory, :id, :owner_id, :num_armies, :geo_state, :game_id
  json.url territory_url(territory, format: :json)
end
