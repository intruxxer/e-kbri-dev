require "rails_helper"

RSpec.describe MarriageCertificatesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/marriage_certificates").to route_to("marriage_certificates#index")
    end

    it "routes to #new" do
      expect(:get => "/marriage_certificates/new").to route_to("marriage_certificates#new")
    end

    it "routes to #show" do
      expect(:get => "/marriage_certificates/1").to route_to("marriage_certificates#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/marriage_certificates/1/edit").to route_to("marriage_certificates#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/marriage_certificates").to route_to("marriage_certificates#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/marriage_certificates/1").to route_to("marriage_certificates#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/marriage_certificates/1").to route_to("marriage_certificates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/marriage_certificates/1").to route_to("marriage_certificates#destroy", :id => "1")
    end

  end
end
