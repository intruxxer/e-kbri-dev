require 'rails_helper'

RSpec.describe "exit_permits/edit", type: :view do
  before(:each) do
    @exit_permit = assign(:exit_permit, ExitPermit.create!())
  end

  it "renders the edit exit_permit form" do
    render

    assert_select "form[action=?][method=?]", exit_permit_path(@exit_permit), "post" do
    end
  end
end
