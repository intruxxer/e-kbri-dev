require 'rails_helper'

RSpec.describe "farewell_goods_certificates/index", type: :view do
  before(:each) do
    assign(:farewell_goods_certificates, [
      FarewellGoodsCertificate.create!(),
      FarewellGoodsCertificate.create!()
    ])
  end

  it "renders a list of farewell_goods_certificates" do
    render
  end
end
