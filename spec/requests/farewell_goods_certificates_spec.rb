require 'rails_helper'

RSpec.describe "FarewellGoodsCertificates", type: :request do
  describe "GET /farewell_goods_certificates" do
    it "works! (now write some real specs)" do
      get farewell_goods_certificates_path
      expect(response).to have_http_status(200)
    end
  end
end
