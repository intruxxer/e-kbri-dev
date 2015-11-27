require 'rails_helper'

RSpec.describe "exit_permits/show", type: :view do
  before(:each) do
    @exit_permit = assign(:exit_permit, ExitPermit.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
