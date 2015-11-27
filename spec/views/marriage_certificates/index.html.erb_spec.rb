require 'rails_helper'

RSpec.describe "marriage_certificates/index", type: :view do
  before(:each) do
    assign(:marriage_certificates, [
      MarriageCertificate.create!(),
      MarriageCertificate.create!()
    ])
  end

  it "renders a list of marriage_certificates" do
    render
  end
end
