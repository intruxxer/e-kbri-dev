require 'rails_helper'

RSpec.describe "company_doc_certificates/new", type: :view do
  before(:each) do
    assign(:company_doc_certificate, CompanyDocCertificate.new())
  end

  it "renders new company_doc_certificate form" do
    render

    assert_select "form[action=?][method=?]", company_doc_certificates_path, "post" do
    end
  end
end
