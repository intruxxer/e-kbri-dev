require 'rails_helper'

RSpec.describe "MarriageAffidavits", type: :request do
  describe "GET /marriage_affidavits" do
    it "works! (now write some real specs)" do
      get marriage_affidavits_path
      expect(response).to have_http_status(200)
    end
  end
end
