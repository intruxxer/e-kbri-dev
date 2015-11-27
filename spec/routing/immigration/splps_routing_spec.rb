require "rails_helper"

RSpec.describe Immigration::SplpsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/immigration/splps").to route_to("immigration/splps#index")
    end

    it "routes to #new" do
      expect(:get => "/immigration/splps/new").to route_to("immigration/splps#new")
    end

    it "routes to #show" do
      expect(:get => "/immigration/splps/1").to route_to("immigration/splps#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/immigration/splps/1/edit").to route_to("immigration/splps#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/immigration/splps").to route_to("immigration/splps#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/immigration/splps/1").to route_to("immigration/splps#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/immigration/splps/1").to route_to("immigration/splps#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/immigration/splps/1").to route_to("immigration/splps#destroy", :id => "1")
    end

  end
end
