json.array!(@marriage_certificates) do |marriage_certificate|
  json.extract! marriage_certificate, :id
  json.url marriage_certificate_url(marriage_certificate, format: :json)
end
