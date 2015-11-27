require 'rails_helper'

RSpec.describe "BirthdayCertificates", type: :request do
  describe "GET /birthday_certificates" do
    it "works! (now write some real specs)" do
      get birthday_certificates_path
      expect(response).to have_http_status(200)
    end
  end
end
