require 'rails_helper'

RSpec.describe "driving_license_certificates/show", type: :view do
  before(:each) do
    @driving_license_certificate = assign(:driving_license_certificate, DrivingLicenseCertificate.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
