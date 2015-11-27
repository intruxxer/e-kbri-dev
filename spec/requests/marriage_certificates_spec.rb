require 'rails_helper'

RSpec.describe "MarriageCertificates", type: :request do
  describe "GET /marriage_certificates" do
    it "works! (now write some real specs)" do
      get marriage_certificates_path
      expect(response).to have_http_status(200)
    end
  end
end
