require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe FarewellGoodsCertificatesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # FarewellGoodsCertificate. As you add validations to FarewellGoodsCertificate, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # FarewellGoodsCertificatesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all farewell_goods_certificates as @farewell_goods_certificates" do
      farewell_goods_certificate = FarewellGoodsCertificate.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:farewell_goods_certificates)).to eq([farewell_goods_certificate])
    end
  end

  describe "GET #show" do
    it "assigns the requested farewell_goods_certificate as @farewell_goods_certificate" do
      farewell_goods_certificate = FarewellGoodsCertificate.create! valid_attributes
      get :show, {:id => farewell_goods_certificate.to_param}, valid_session
      expect(assigns(:farewell_goods_certificate)).to eq(farewell_goods_certificate)
    end
  end

  describe "GET #new" do
    it "assigns a new farewell_goods_certificate as @farewell_goods_certificate" do
      get :new, {}, valid_session
      expect(assigns(:farewell_goods_certificate)).to be_a_new(FarewellGoodsCertificate)
    end
  end

  describe "GET #edit" do
    it "assigns the requested farewell_goods_certificate as @farewell_goods_certificate" do
      farewell_goods_certificate = FarewellGoodsCertificate.create! valid_attributes
      get :edit, {:id => farewell_goods_certificate.to_param}, valid_session
      expect(assigns(:farewell_goods_certificate)).to eq(farewell_goods_certificate)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new FarewellGoodsCertificate" do
        expect {
          post :create, {:farewell_goods_certificate => valid_attributes}, valid_session
        }.to change(FarewellGoodsCertificate, :count).by(1)
      end

      it "assigns a newly created farewell_goods_certificate as @farewell_goods_certificate" do
        post :create, {:farewell_goods_certificate => valid_attributes}, valid_session
        expect(assigns(:farewell_goods_certificate)).to be_a(FarewellGoodsCertificate)
        expect(assigns(:farewell_goods_certificate)).to be_persisted
      end

      it "redirects to the created farewell_goods_certificate" do
        post :create, {:farewell_goods_certificate => valid_attributes}, valid_session
        expect(response).to redirect_to(FarewellGoodsCertificate.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved farewell_goods_certificate as @farewell_goods_certificate" do
        post :create, {:farewell_goods_certificate => invalid_attributes}, valid_session
        expect(assigns(:farewell_goods_certificate)).to be_a_new(FarewellGoodsCertificate)
      end

      it "re-renders the 'new' template" do
        post :create, {:farewell_goods_certificate => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested farewell_goods_certificate" do
        farewell_goods_certificate = FarewellGoodsCertificate.create! valid_attributes
        put :update, {:id => farewell_goods_certificate.to_param, :farewell_goods_certificate => new_attributes}, valid_session
        farewell_goods_certificate.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested farewell_goods_certificate as @farewell_goods_certificate" do
        farewell_goods_certificate = FarewellGoodsCertificate.create! valid_attributes
        put :update, {:id => farewell_goods_certificate.to_param, :farewell_goods_certificate => valid_attributes}, valid_session
        expect(assigns(:farewell_goods_certificate)).to eq(farewell_goods_certificate)
      end

      it "redirects to the farewell_goods_certificate" do
        farewell_goods_certificate = FarewellGoodsCertificate.create! valid_attributes
        put :update, {:id => farewell_goods_certificate.to_param, :farewell_goods_certificate => valid_attributes}, valid_session
        expect(response).to redirect_to(farewell_goods_certificate)
      end
    end

    context "with invalid params" do
      it "assigns the farewell_goods_certificate as @farewell_goods_certificate" do
        farewell_goods_certificate = FarewellGoodsCertificate.create! valid_attributes
        put :update, {:id => farewell_goods_certificate.to_param, :farewell_goods_certificate => invalid_attributes}, valid_session
        expect(assigns(:farewell_goods_certificate)).to eq(farewell_goods_certificate)
      end

      it "re-renders the 'edit' template" do
        farewell_goods_certificate = FarewellGoodsCertificate.create! valid_attributes
        put :update, {:id => farewell_goods_certificate.to_param, :farewell_goods_certificate => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested farewell_goods_certificate" do
      farewell_goods_certificate = FarewellGoodsCertificate.create! valid_attributes
      expect {
        delete :destroy, {:id => farewell_goods_certificate.to_param}, valid_session
      }.to change(FarewellGoodsCertificate, :count).by(-1)
    end

    it "redirects to the farewell_goods_certificates list" do
      farewell_goods_certificate = FarewellGoodsCertificate.create! valid_attributes
      delete :destroy, {:id => farewell_goods_certificate.to_param}, valid_session
      expect(response).to redirect_to(farewell_goods_certificates_url)
    end
  end

end
