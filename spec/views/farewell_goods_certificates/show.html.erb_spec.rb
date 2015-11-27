require 'rails_helper'

RSpec.describe "farewell_goods_certificates/show", type: :view do
  before(:each) do
    @farewell_goods_certificate = assign(:farewell_goods_certificate, FarewellGoodsCertificate.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
