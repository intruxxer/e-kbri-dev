require 'rails_helper'

RSpec.describe "company_doc_certificates/edit", type: :view do
  before(:each) do
    @company_doc_certificate = assign(:company_doc_certificate, CompanyDocCertificate.create!())
  end

  it "renders the edit company_doc_certificate form" do
    render

    assert_select "form[action=?][method=?]", company_doc_certificate_path(@company_doc_certificate), "post" do
    end
  end
end
