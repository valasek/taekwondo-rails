json.array!(@competitions_members) do |competitions_member|
  json.extract! competitions_member, :id
  json.url competitions_member_url(competitions_member, format: :json)
end
