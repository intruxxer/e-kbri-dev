require 'rails_helper'

RSpec.describe "authorization_doc_certificates/show", type: :view do
  before(:each) do
    @authorization_doc_certificate = assign(:authorization_doc_certificate, AuthorizationDocCertificate.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
