require 'rails_helper'

RSpec.describe "kitas_return_certificates/edit", type: :view do
  before(:each) do
    @kitas_return_certificate = assign(:kitas_return_certificate, KitasReturnCertificate.create!())
  end

  it "renders the edit kitas_return_certificate form" do
    render

    assert_select "form[action=?][method=?]", kitas_return_certificate_path(@kitas_return_certificate), "post" do
    end
  end
end
