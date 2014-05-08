json.array!(@games) do |game|
  json.extract! game, :id, :turn, :game_state, :num_players
  json.url game_url(game, format: :json)
end
