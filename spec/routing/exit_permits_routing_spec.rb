require "rails_helper"

RSpec.describe ExitPermitsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/exit_permits").to route_to("exit_permits#index")
    end

    it "routes to #new" do
      expect(:get => "/exit_permits/new").to route_to("exit_permits#new")
    end

    it "routes to #show" do
      expect(:get => "/exit_permits/1").to route_to("exit_permits#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/exit_permits/1/edit").to route_to("exit_permits#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/exit_permits").to route_to("exit_permits#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/exit_permits/1").to route_to("exit_permits#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/exit_permits/1").to route_to("exit_permits#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/exit_permits/1").to route_to("exit_permits#destroy", :id => "1")
    end

  end
end
