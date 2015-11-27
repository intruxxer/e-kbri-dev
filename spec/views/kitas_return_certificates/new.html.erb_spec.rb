require 'rails_helper'

RSpec.describe "kitas_return_certificates/new", type: :view do
  before(:each) do
    assign(:kitas_return_certificate, KitasReturnCertificate.new())
  end

  it "renders new kitas_return_certificate form" do
    render

    assert_select "form[action=?][method=?]", kitas_return_certificates_path, "post" do
    end
  end
end
