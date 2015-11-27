require 'rails_helper'

RSpec.describe "immigration/splps/edit", type: :view do
  before(:each) do
    @immigration_splp = assign(:immigration_splp, Immigration::Splp.create!())
  end

  it "renders the edit immigration_splp form" do
    render

    assert_select "form[action=?][method=?]", immigration_splp_path(@immigration_splp), "post" do
    end
  end
end
