require 'rails_helper'

RSpec.describe "driving_license_certificates/edit", type: :view do
  before(:each) do
    @driving_license_certificate = assign(:driving_license_certificate, DrivingLicenseCertificate.create!())
  end

  it "renders the edit driving_license_certificate form" do
    render

    assert_select "form[action=?][method=?]", driving_license_certificate_path(@driving_license_certificate), "post" do
    end
  end
end
