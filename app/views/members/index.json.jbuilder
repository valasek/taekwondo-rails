json.array!(@members) do |member|
  json.extract! member, :id, :itf_id, :first_name, :last_name, :birthdate
  json.url member_url(member, format: :json)
end
