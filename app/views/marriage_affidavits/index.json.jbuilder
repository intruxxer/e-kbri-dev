json.array!(@marriage_affidavits) do |marriage_affidavit|
  json.extract! marriage_affidavit, :id
  json.url marriage_affidavit_url(marriage_affidavit, format: :json)
end
