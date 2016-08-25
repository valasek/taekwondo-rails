json.array!(@competitions) do |competition|
  json.extract! competition, :id, :name, :location, :date, :deadline, :fee, :instructions_url, :langlong
  json.url competition_url(competition, format: :json)
end
