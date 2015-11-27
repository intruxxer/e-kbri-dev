json.array!(@farewell_goods_certificates) do |farewell_goods_certificate|
  json.extract! farewell_goods_certificate, :id
  json.url farewell_goods_certificate_url(farewell_goods_certificate, format: :json)
end
