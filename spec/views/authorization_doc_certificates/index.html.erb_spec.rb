require 'rails_helper'

RSpec.describe "authorization_doc_certificates/index", type: :view do
  before(:each) do
    assign(:authorization_doc_certificates, [
      AuthorizationDocCertificate.create!(),
      AuthorizationDocCertificate.create!()
    ])
  end

  it "renders a list of authorization_doc_certificates" do
    render
  end
end
