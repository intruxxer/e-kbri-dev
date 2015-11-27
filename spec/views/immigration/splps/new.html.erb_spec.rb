require 'rails_helper'

RSpec.describe "immigration/splps/new", type: :view do
  before(:each) do
    assign(:immigration_splp, Immigration::Splp.new())
  end

  it "renders new immigration_splp form" do
    render

    assert_select "form[action=?][method=?]", immigration_splps_path, "post" do
    end
  end
end
