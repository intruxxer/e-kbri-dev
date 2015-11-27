require 'rails_helper'

RSpec.describe "DrivingLicenseCertificates", type: :request do
  describe "GET /driving_license_certificates" do
    it "works! (now write some real specs)" do
      get driving_license_certificates_path
      expect(response).to have_http_status(200)
    end
  end
end
