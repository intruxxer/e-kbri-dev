require 'rails_helper'

RSpec.describe "farewell_goods_certificates/new", type: :view do
  before(:each) do
    assign(:farewell_goods_certificate, FarewellGoodsCertificate.new())
  end

  it "renders new farewell_goods_certificate form" do
    render

    assert_select "form[action=?][method=?]", farewell_goods_certificates_path, "post" do
    end
  end
end
