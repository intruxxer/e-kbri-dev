require 'rails_helper'

RSpec.describe "immigration/splps/index", type: :view do
  before(:each) do
    assign(:immigration_splps, [
      Immigration::Splp.create!(),
      Immigration::Splp.create!()
    ])
  end

  it "renders a list of immigration/splps" do
    render
  end
end
