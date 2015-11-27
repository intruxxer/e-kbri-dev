require 'rails_helper'

RSpec.describe "graduation_doc_certificates/show", type: :view do
  before(:each) do
    @graduation_doc_certificate = assign(:graduation_doc_certificate, GraduationDocCertificate.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
