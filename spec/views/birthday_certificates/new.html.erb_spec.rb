require 'rails_helper'

RSpec.describe "birthday_certificates/new", type: :view do
  before(:each) do
    assign(:birthday_certificate, BirthdayCertificate.new())
  end

  it "renders new birthday_certificate form" do
    render

    assert_select "form[action=?][method=?]", birthday_certificates_path, "post" do
    end
  end
end
