require 'rails_helper'

RSpec.describe "company_doc_certificates/index", type: :view do
  before(:each) do
    assign(:company_doc_certificates, [
      CompanyDocCertificate.create!(),
      CompanyDocCertificate.create!()
    ])
  end

  it "renders a list of company_doc_certificates" do
    render
  end
end
