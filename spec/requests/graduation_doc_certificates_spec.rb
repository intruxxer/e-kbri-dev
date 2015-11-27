require 'rails_helper'

RSpec.describe "GraduationDocCertificates", type: :request do
  describe "GET /graduation_doc_certificates" do
    it "works! (now write some real specs)" do
      get graduation_doc_certificates_path
      expect(response).to have_http_status(200)
    end
  end
end
