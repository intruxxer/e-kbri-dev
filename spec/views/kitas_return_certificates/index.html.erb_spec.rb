require 'rails_helper'

RSpec.describe "kitas_return_certificates/index", type: :view do
  before(:each) do
    assign(:kitas_return_certificates, [
      KitasReturnCertificate.create!(),
      KitasReturnCertificate.create!()
    ])
  end

  it "renders a list of kitas_return_certificates" do
    render
  end
end
