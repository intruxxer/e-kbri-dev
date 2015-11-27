require 'rails_helper'

RSpec.describe "graduation_doc_certificates/edit", type: :view do
  before(:each) do
    @graduation_doc_certificate = assign(:graduation_doc_certificate, GraduationDocCertificate.create!())
  end

  it "renders the edit graduation_doc_certificate form" do
    render

    assert_select "form[action=?][method=?]", graduation_doc_certificate_path(@graduation_doc_certificate), "post" do
    end
  end
end
