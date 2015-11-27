json.array!(@company_doc_certificates) do |company_doc_certificate|
  json.extract! company_doc_certificate, :id
  json.url company_doc_certificate_url(company_doc_certificate, format: :json)
end
