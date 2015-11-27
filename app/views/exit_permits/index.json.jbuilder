json.array!(@exit_permits) do |exit_permit|
  json.extract! exit_permit, :id
  json.url exit_permit_url(exit_permit, format: :json)
end
