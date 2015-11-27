require 'rails_helper'

RSpec.describe "marriage_certificates/new", type: :view do
  before(:each) do
    assign(:marriage_certificate, MarriageCertificate.new())
  end

  it "renders new marriage_certificate form" do
    render

    assert_select "form[action=?][method=?]", marriage_certificates_path, "post" do
    end
  end
end
