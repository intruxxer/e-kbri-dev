require 'rails_helper'

RSpec.describe "birthday_certificates/index", type: :view do
  before(:each) do
    assign(:birthday_certificates, [
      BirthdayCertificate.create!(),
      BirthdayCertificate.create!()
    ])
  end

  it "renders a list of birthday_certificates" do
    render
  end
end
