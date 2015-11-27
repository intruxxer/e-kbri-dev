require 'rails_helper'

RSpec.describe "company_doc_certificates/show", type: :view do
  before(:each) do
    @company_doc_certificate = assign(:company_doc_certificate, CompanyDocCertificate.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
