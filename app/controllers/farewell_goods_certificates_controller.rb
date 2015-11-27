class FarewellGoodsCertificatesController < ApplicationController
  before_action :set_farewell_goods_certificate, only: [:show, :edit, :update, :destroy]

  def index
    @farewell_goods_certificates = FarewellGoodsCertificate.all.page(params[:page]).per(20)
    if @farewell_goods_certificates.count > 0 then
      render 'index'
    else
      @farewell_goods_certificate = FarewellGoodsCertificate.new
      render 'new'
    end
  end

  def show
    @farewell_goods_certificate = FarewellGoodsCertificate.find(params[:id])
    respond_to do |format|
      format.html { render 'show' }
      format.json { render json: @farewell_goods_certificate }
      format.xml { render xml: @farewell_goods_certificate }
        format.pdf do
          render :pdf            => "Back-for-good Goods' Letter",
                 :disposition    => "inline", #{attachment, inline}
                 :template       => "farewell_goods_certificates/letter.html.erb",
                 :layout         => "pdf_layout.html",
                 :encoding       => "utf8"
        end
      end
  end

  def new
    @farewell_goods_certificate = FarewellGoodsCertificate.new
    render 'new'
  end

  def edit
  end

  def create
    @farewell_goods_certificate = FarewellGoodsCertificate.new(farewell_goods_certificate_params)
    current_user.farewell_goods_certificates.push(@farewell_goods_certificate)
    current_user.save
    redirect_to :back, :notice => 'Permohonan telah diterima.'
  end

  def update
    @farewell_goods_certificate.update(farewell_goods_certificate_params)
    redirect_to :back, :notice => 'Permohonan telah diupdate.'
  end

  def destroy
    @farewell_goods_certificate.destroy
    redirect_to :back, :notice => 'Permohonan telah dihapus.'
  end

  private
    def set_farewell_goods_certificate
      @farewell_goods_certificate = FarewellGoodsCertificate.find(params[:id])
    end

    def farewell_goods_certificate_params
      params.require(:farewell_goods_certificate).permit(:applicant_name, :applicant_birthplace, :applicant_birthdate,
        :applicant_passport, :applicant_address_indonesia, :authorized_signer_name, :authorized_signer_post)
    end
end
