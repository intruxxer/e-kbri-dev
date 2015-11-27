require 'rails_helper'

RSpec.describe "Immigration::Splps", type: :request do
  describe "GET /immigration_splps" do
    it "works! (now write some real specs)" do
      get immigration_splps_path
      expect(response).to have_http_status(200)
    end
  end
end
