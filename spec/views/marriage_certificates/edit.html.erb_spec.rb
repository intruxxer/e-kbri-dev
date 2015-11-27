require 'rails_helper'

RSpec.describe "marriage_certificates/edit", type: :view do
  before(:each) do
    @marriage_certificate = assign(:marriage_certificate, MarriageCertificate.create!())
  end

  it "renders the edit marriage_certificate form" do
    render

    assert_select "form[action=?][method=?]", marriage_certificate_path(@marriage_certificate), "post" do
    end
  end
end
