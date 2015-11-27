require 'rails_helper'

RSpec.describe "KitasReturnCertificates", type: :request do
  describe "GET /kitas_return_certificates" do
    it "works! (now write some real specs)" do
      get kitas_return_certificates_path
      expect(response).to have_http_status(200)
    end
  end
end
