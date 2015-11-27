class GraduationDocCertificatesController < ApplicationController
  before_action :set_graduation_doc_certificate, only: [:show, :edit, :update, :destroy]

  def index
    @graduation_doc_certificates = GraduationDocCertificate.all.page(params[:page]).per(20)
    if @graduation_doc_certificates.count > 0 then
      render 'index'
    else
      @graduation_doc_certificate = GraduationDocCertificate.new
      render 'new'
    end
  end

  def show
    @graduation_doc_certificate = GraduationDocCertificate.find(params[:id])
      respond_to do |format|
      format.html { render 'show' }
      format.json { render json: @graduation_doc_certificate }
      format.xml { render xml: @graduation_doc_certificate }
        format.pdf do
          render :pdf            => "Graduation Certificate Legalization",
                 :disposition    => "inline", #{attachment, inline}
                 :template       => "graduation_doc_certificates/letter.html.erb",
                 :layout         => "pdf_layout.html",
                 :encoding       => "utf8"
        end
      end
  end

  def new
    @graduation_doc_certificate = GraduationDocCertificate.new
    render 'new'
  end

  def edit
  end

  def create
    @graduation_doc_certificate = GraduationDocCertificate.new(graduation_doc_certificate_params)
    current_user.graduation_doc_certificates.push(@graduation_doc_certificate)
    current_user.save
    redirect_to :back, :notice => 'Permohonan telah diterima.'
  end

  def update
    @graduation_doc_certificate.update(graduation_doc_certificate_params)
    redirect_to :back, :notice => 'Permohonan telah diupdate.'
  end

  def destroy
    @graduation_doc_certificate.destroy
    redirect_to :back, :notice => 'Permohonan telah dihapus.'
  end

  private
    def set_graduation_doc_certificate
      @graduation_doc_certificate = GraduationDocCertificate.find(params[:id])
    end

    def graduation_doc_certificate_params
      params.require(:graduation_doc_certificate).permit(:doc_applicant, :doc_university, :authorized_signer_name, :authorized_signer_post)
    end
end
