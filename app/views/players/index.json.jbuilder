json.array!(@players) do |player|
  json.extract! player, :id, :game_id, :color
  json.url player_url(player, format: :json)
end
