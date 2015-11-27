require "rails_helper"

RSpec.describe MarriageAffidavitsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/marriage_affidavits").to route_to("marriage_affidavits#index")
    end

    it "routes to #new" do
      expect(:get => "/marriage_affidavits/new").to route_to("marriage_affidavits#new")
    end

    it "routes to #show" do
      expect(:get => "/marriage_affidavits/1").to route_to("marriage_affidavits#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/marriage_affidavits/1/edit").to route_to("marriage_affidavits#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/marriage_affidavits").to route_to("marriage_affidavits#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/marriage_affidavits/1").to route_to("marriage_affidavits#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/marriage_affidavits/1").to route_to("marriage_affidavits#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/marriage_affidavits/1").to route_to("marriage_affidavits#destroy", :id => "1")
    end

  end
end
