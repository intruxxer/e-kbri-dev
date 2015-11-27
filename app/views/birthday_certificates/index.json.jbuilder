json.array!(@birthday_certificates) do |birthday_certificate|
  json.extract! birthday_certificate, :id
  json.url birthday_certificate_url(birthday_certificate, format: :json)
end
