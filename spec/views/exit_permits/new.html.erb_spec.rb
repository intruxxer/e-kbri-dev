require 'rails_helper'

RSpec.describe "exit_permits/new", type: :view do
  before(:each) do
    assign(:exit_permit, ExitPermit.new())
  end

  it "renders new exit_permit form" do
    render

    assert_select "form[action=?][method=?]", exit_permits_path, "post" do
    end
  end
end
