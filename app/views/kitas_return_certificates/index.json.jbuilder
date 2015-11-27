json.array!(@kitas_return_certificates) do |kitas_return_certificate|
  json.extract! kitas_return_certificate, :id
  json.url kitas_return_certificate_url(kitas_return_certificate, format: :json)
end
