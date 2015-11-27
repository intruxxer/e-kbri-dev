json.array!(@authorization_doc_certificates) do |authorization_doc_certificate|
  json.extract! authorization_doc_certificate, :id
  json.url authorization_doc_certificate_url(authorization_doc_certificate, format: :json)
end
