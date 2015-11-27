require 'rails_helper'

RSpec.describe "marriage_affidavits/show", type: :view do
  before(:each) do
    @marriage_affidavit = assign(:marriage_affidavit, MarriageAffidavit.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
