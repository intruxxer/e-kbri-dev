require 'rails_helper'

RSpec.describe "birthday_certificates/edit", type: :view do
  before(:each) do
    @birthday_certificate = assign(:birthday_certificate, BirthdayCertificate.create!())
  end

  it "renders the edit birthday_certificate form" do
    render

    assert_select "form[action=?][method=?]", birthday_certificate_path(@birthday_certificate), "post" do
    end
  end
end
