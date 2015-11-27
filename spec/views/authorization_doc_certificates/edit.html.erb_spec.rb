require 'rails_helper'

RSpec.describe "authorization_doc_certificates/edit", type: :view do
  before(:each) do
    @authorization_doc_certificate = assign(:authorization_doc_certificate, AuthorizationDocCertificate.create!())
  end

  it "renders the edit authorization_doc_certificate form" do
    render

    assert_select "form[action=?][method=?]", authorization_doc_certificate_path(@authorization_doc_certificate), "post" do
    end
  end
end
