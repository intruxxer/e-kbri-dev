json.array!(@driving_license_certificates) do |driving_license_certificate|
  json.extract! driving_license_certificate, :id
  json.url driving_license_certificate_url(driving_license_certificate, format: :json)
end
