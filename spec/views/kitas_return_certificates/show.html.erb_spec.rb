require 'rails_helper'

RSpec.describe "kitas_return_certificates/show", type: :view do
  before(:each) do
    @kitas_return_certificate = assign(:kitas_return_certificate, KitasReturnCertificate.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
