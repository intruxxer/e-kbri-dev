require "rails_helper"

RSpec.describe BirthdayCertificatesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/birthday_certificates").to route_to("birthday_certificates#index")
    end

    it "routes to #new" do
      expect(:get => "/birthday_certificates/new").to route_to("birthday_certificates#new")
    end

    it "routes to #show" do
      expect(:get => "/birthday_certificates/1").to route_to("birthday_certificates#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/birthday_certificates/1/edit").to route_to("birthday_certificates#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/birthday_certificates").to route_to("birthday_certificates#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/birthday_certificates/1").to route_to("birthday_certificates#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/birthday_certificates/1").to route_to("birthday_certificates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/birthday_certificates/1").to route_to("birthday_certificates#destroy", :id => "1")
    end

  end
end
