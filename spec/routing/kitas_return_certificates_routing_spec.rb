require "rails_helper"

RSpec.describe KitasReturnCertificatesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/kitas_return_certificates").to route_to("kitas_return_certificates#index")
    end

    it "routes to #new" do
      expect(:get => "/kitas_return_certificates/new").to route_to("kitas_return_certificates#new")
    end

    it "routes to #show" do
      expect(:get => "/kitas_return_certificates/1").to route_to("kitas_return_certificates#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/kitas_return_certificates/1/edit").to route_to("kitas_return_certificates#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/kitas_return_certificates").to route_to("kitas_return_certificates#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/kitas_return_certificates/1").to route_to("kitas_return_certificates#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/kitas_return_certificates/1").to route_to("kitas_return_certificates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/kitas_return_certificates/1").to route_to("kitas_return_certificates#destroy", :id => "1")
    end

  end
end
