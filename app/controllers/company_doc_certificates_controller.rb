class CompanyDocCertificatesController < ApplicationController
  before_action :set_company_doc_certificate, only: [:show, :edit, :update, :destroy]

  #respond_to :html

  def index
    @company_doc_certificates = CompanyDocCertificate.all.page(params[:page]).per(20)
    if @company_doc_certificates.count > 0 then
      render 'index'
    else
      @company_doc_certificate = CompanyDocCertificate.new
      render 'new'
    end
    #respond_with(@company_doc_certificates)
  end

  def show
    @company_doc_certificate = CompanyDocCertificate.find(params[:id])
      respond_to do |format|
      format.html { render 'show' }
      format.json { render json: @company_doc_certificate }
      format.xml { render xml: @company_doc_certificate }
        format.pdf do
          render :pdf            => "Legalisasi Dokumen Perusahaan",
                 :disposition    => "inline", #{attachment, inline}
                 :template       => "company_doc_certificates/letter.html.erb",
                 :layout         => "pdf_layout.html",
                 :encoding       => "utf8"
        end
      end
  end

  def new
    @company_doc_certificate = CompanyDocCertificate.new
    render 'new'
    #respond_to :html (class-level) then  #respond_with(@company_doc_certificate) in methods
  end

  def edit
  end

  def create
    @company_doc_certificate = CompanyDocCertificate.new(company_doc_certificate_params)
    current_user.company_doc_certificates.push(@company_doc_certificate)
    current_user.save
    redirect_to :back, :notice => 'Permohonan telah diterima.'
    #respond_with(@company_doc_certificate)
  end

  def update
    @company_doc_certificate.update(company_doc_certificate_params)
    redirect_to :back, :notice => 'Permohonan telah diupdate.'
    #respond_with(@company_doc_certificate)
  end

  def destroy
    @company_doc_certificate.destroy
    redirect_to :back, :notice => 'Permohonan telah dihapus.'
    #respond_with(@company_doc_certificate)
  end

  private
    def set_company_doc_certificate
      @company_doc_certificate = CompanyDocCertificate.find(params[:id])
    end

    def company_doc_certificate_params
      params.require(:company_doc_certificate).permit(:doc_applicant, :authorized_signer_name, :authorized_signer_post)
    end
end
