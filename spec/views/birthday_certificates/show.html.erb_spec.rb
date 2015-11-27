require 'rails_helper'

RSpec.describe "birthday_certificates/show", type: :view do
  before(:each) do
    @birthday_certificate = assign(:birthday_certificate, BirthdayCertificate.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
