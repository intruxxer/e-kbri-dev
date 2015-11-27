require 'rails_helper'

RSpec.describe "immigration/splps/show", type: :view do
  before(:each) do
    @immigration_splp = assign(:immigration_splp, Immigration::Splp.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
