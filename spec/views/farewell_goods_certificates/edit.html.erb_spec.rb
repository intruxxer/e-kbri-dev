require 'rails_helper'

RSpec.describe "farewell_goods_certificates/edit", type: :view do
  before(:each) do
    @farewell_goods_certificate = assign(:farewell_goods_certificate, FarewellGoodsCertificate.create!())
  end

  it "renders the edit farewell_goods_certificate form" do
    render

    assert_select "form[action=?][method=?]", farewell_goods_certificate_path(@farewell_goods_certificate), "post" do
    end
  end
end
