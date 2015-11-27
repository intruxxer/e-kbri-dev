json.array!(@immigration_splps) do |immigration_splp|
  json.extract! immigration_splp, :id
  json.url immigration_splp_url(immigration_splp, format: :json)
end
