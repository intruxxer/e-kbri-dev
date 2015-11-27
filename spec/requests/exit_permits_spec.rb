require 'rails_helper'

RSpec.describe "ExitPermits", type: :request do
  describe "GET /exit_permits" do
    it "works! (now write some real specs)" do
      get exit_permits_path
      expect(response).to have_http_status(200)
    end
  end
end
