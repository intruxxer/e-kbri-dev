require 'rails_helper'

RSpec.describe "exit_permits/index", type: :view do
  before(:each) do
    assign(:exit_permits, [
      ExitPermit.create!(),
      ExitPermit.create!()
    ])
  end

  it "renders a list of exit_permits" do
    render
  end
end
