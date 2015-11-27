require "rails_helper"

RSpec.describe FarewellGoodsCertificatesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/farewell_goods_certificates").to route_to("farewell_goods_certificates#index")
    end

    it "routes to #new" do
      expect(:get => "/farewell_goods_certificates/new").to route_to("farewell_goods_certificates#new")
    end

    it "routes to #show" do
      expect(:get => "/farewell_goods_certificates/1").to route_to("farewell_goods_certificates#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/farewell_goods_certificates/1/edit").to route_to("farewell_goods_certificates#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/farewell_goods_certificates").to route_to("farewell_goods_certificates#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/farewell_goods_certificates/1").to route_to("farewell_goods_certificates#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/farewell_goods_certificates/1").to route_to("farewell_goods_certificates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/farewell_goods_certificates/1").to route_to("farewell_goods_certificates#destroy", :id => "1")
    end

  end
end
