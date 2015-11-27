require 'rails_helper'

RSpec.describe "graduation_doc_certificates/index", type: :view do
  before(:each) do
    assign(:graduation_doc_certificates, [
      GraduationDocCertificate.create!(),
      GraduationDocCertificate.create!()
    ])
  end

  it "renders a list of graduation_doc_certificates" do
    render
  end
end
