class AuthorizationDocCertificatesController < ApplicationController
  before_action :set_authorization_doc_certificate, only: [:show, :edit, :update, :destroy]


  def index
    @authorization_doc_certificates = AuthorizationDocCertificate.all.page(params[:page]).per(20)
    if @authorization_doc_certificates.count > 0 then
      render 'index'
    else
      @authorization_doc_certificate = AuthorizationDocCertificate.new
      render 'new'
    end
  end

  def show
    @authorization_doc_certificate = AuthorizationDocCertificate.find(params[:id])
    respond_to do |format|
      format.html { render 'show' }
      format.json { render json: @authorization_doc_certificate }
      format.xml { render xml: @authorization_doc_certificate }
        format.pdf do
          render :pdf            => "Authorization Certificate Legalization",
                 :disposition    => "inline", #{attachment, inline}
                 :template       => "authorization_doc_certificates/letter.html.erb",
                 :layout         => "pdf_layout.html",
                 :encoding       => "utf8"
        end
      end
  end

  def new
    @authorization_doc_certificate = AuthorizationDocCertificate.new
    render 'new'
  end

  def edit
  end

  def create
    @authorization_doc_certificate = AuthorizationDocCertificate.new(authorization_doc_certificate_params)
    current_user.authorization_doc_certificates.push(@authorization_doc_certificate)
    current_user.save
    redirect_to :back, :notice => 'Permohonan telah diterima.'
  end

  def update
    @authorization_doc_certificate.update(authorization_doc_certificate_params)
    redirect_to :back, :notice => 'Permohonan telah diupdate.'
  end

  def destroy
    @authorization_doc_certificate.destroy
    redirect_to :back, :notice => 'Permohonan telah dihapus.'
  end

  private
    def set_authorization_doc_certificate
      @authorization_doc_certificate = AuthorizationDocCertificate.find(params[:id])
    end

    def authorization_doc_certificate_params
      params.require(:authorization_doc_certificate).permit(:doc_applicant, :doc_applicant_passport, :authorized_signer_name, :authorized_signer_post)
    end
end
