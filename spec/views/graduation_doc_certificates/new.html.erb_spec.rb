require 'rails_helper'

RSpec.describe "graduation_doc_certificates/new", type: :view do
  before(:each) do
    assign(:graduation_doc_certificate, GraduationDocCertificate.new())
  end

  it "renders new graduation_doc_certificate form" do
    render

    assert_select "form[action=?][method=?]", graduation_doc_certificates_path, "post" do
    end
  end
end
