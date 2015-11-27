require 'rails_helper'

RSpec.describe "driving_license_certificates/new", type: :view do
  before(:each) do
    assign(:driving_license_certificate, DrivingLicenseCertificate.new())
  end

  it "renders new driving_license_certificate form" do
    render

    assert_select "form[action=?][method=?]", driving_license_certificates_path, "post" do
    end
  end
end
