require 'rails_helper'

RSpec.describe "marriage_affidavits/new", type: :view do
  before(:each) do
    assign(:marriage_affidavit, MarriageAffidavit.new())
  end

  it "renders new marriage_affidavit form" do
    render

    assert_select "form[action=?][method=?]", marriage_affidavits_path, "post" do
    end
  end
end
