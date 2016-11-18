json.extract! game, :id, :match_id, :score, :performed_date, :created_at, :updated_at
json.url game_url(game, format: :json)