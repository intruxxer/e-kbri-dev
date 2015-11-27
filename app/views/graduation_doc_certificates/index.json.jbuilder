json.array!(@graduation_doc_certificates) do |graduation_doc_certificate|
  json.extract! graduation_doc_certificate, :id
  json.url graduation_doc_certificate_url(graduation_doc_certificate, format: :json)
end
