require 'rails_helper'

RSpec.describe "marriage_certificates/show", type: :view do
  before(:each) do
    @marriage_certificate = assign(:marriage_certificate, MarriageCertificate.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
