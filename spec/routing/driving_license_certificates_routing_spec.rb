require "rails_helper"

RSpec.describe DrivingLicenseCertificatesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/driving_license_certificates").to route_to("driving_license_certificates#index")
    end

    it "routes to #new" do
      expect(:get => "/driving_license_certificates/new").to route_to("driving_license_certificates#new")
    end

    it "routes to #show" do
      expect(:get => "/driving_license_certificates/1").to route_to("driving_license_certificates#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/driving_license_certificates/1/edit").to route_to("driving_license_certificates#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/driving_license_certificates").to route_to("driving_license_certificates#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/driving_license_certificates/1").to route_to("driving_license_certificates#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/driving_license_certificates/1").to route_to("driving_license_certificates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/driving_license_certificates/1").to route_to("driving_license_certificates#destroy", :id => "1")
    end

  end
end
