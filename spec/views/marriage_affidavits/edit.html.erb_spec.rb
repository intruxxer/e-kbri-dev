require 'rails_helper'

RSpec.describe "marriage_affidavits/edit", type: :view do
  before(:each) do
    @marriage_affidavit = assign(:marriage_affidavit, MarriageAffidavit.create!())
  end

  it "renders the edit marriage_affidavit form" do
    render

    assert_select "form[action=?][method=?]", marriage_affidavit_path(@marriage_affidavit), "post" do
    end
  end
end
