json.array!(@adventurers) do |adventurer|
  json.extract! adventurer, :id, :name, :str, :dex, :con, :int, :wis, :cha
  json.url adventurer_url(adventurer, format: :json)
end
