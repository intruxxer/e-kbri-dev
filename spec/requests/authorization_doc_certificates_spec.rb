require 'rails_helper'

RSpec.describe "AuthorizationDocCertificates", type: :request do
  describe "GET /authorization_doc_certificates" do
    it "works! (now write some real specs)" do
      get authorization_doc_certificates_path
      expect(response).to have_http_status(200)
    end
  end
end
