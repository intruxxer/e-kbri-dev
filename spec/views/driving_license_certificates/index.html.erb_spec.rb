require 'rails_helper'

RSpec.describe "driving_license_certificates/index", type: :view do
  before(:each) do
    assign(:driving_license_certificates, [
      DrivingLicenseCertificate.create!(),
      DrivingLicenseCertificate.create!()
    ])
  end

  it "renders a list of driving_license_certificates" do
    render
  end
end
