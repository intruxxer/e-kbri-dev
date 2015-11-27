require 'rails_helper'

RSpec.describe "marriage_affidavits/index", type: :view do
  before(:each) do
    assign(:marriage_affidavits, [
      MarriageAffidavit.create!(),
      MarriageAffidavit.create!()
    ])
  end

  it "renders a list of marriage_affidavits" do
    render
  end
end
