require 'rails_helper'

RSpec.describe "authorization_doc_certificates/new", type: :view do
  before(:each) do
    assign(:authorization_doc_certificate, AuthorizationDocCertificate.new())
  end

  it "renders new authorization_doc_certificate form" do
    render

    assert_select "form[action=?][method=?]", authorization_doc_certificates_path, "post" do
    end
  end
end
