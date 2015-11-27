require "rails_helper"

RSpec.describe AuthorizationDocCertificatesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/authorization_doc_certificates").to route_to("authorization_doc_certificates#index")
    end

    it "routes to #new" do
      expect(:get => "/authorization_doc_certificates/new").to route_to("authorization_doc_certificates#new")
    end

    it "routes to #show" do
      expect(:get => "/authorization_doc_certificates/1").to route_to("authorization_doc_certificates#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/authorization_doc_certificates/1/edit").to route_to("authorization_doc_certificates#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/authorization_doc_certificates").to route_to("authorization_doc_certificates#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/authorization_doc_certificates/1").to route_to("authorization_doc_certificates#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/authorization_doc_certificates/1").to route_to("authorization_doc_certificates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/authorization_doc_certificates/1").to route_to("authorization_doc_certificates#destroy", :id => "1")
    end

  end
end
