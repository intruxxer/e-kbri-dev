class MarriageCertificatesController < ApplicationController
  before_action :set_marriage_certificate, only: [:show, :edit, :update, :destroy]

  def index
    @marriage_certificates = MarriageCertificate.all.page(params[:page]).per(20)
    if @marriage_certificates.count > 0 then
      render 'index'
    else
      @marriage_certificate = MarriageCertificate.new
      render 'new'
    end
  end

  def show
    @marriage_certificate = MarriageCertificate.find(params[:id])
    respond_to do |format|
      format.html { render 'show' }
      format.json { render json: @marriage_certificate }
      format.xml { render xml: @marriage_certificate }
        format.pdf do
          render :pdf            => "Marriage Confirmation Letter",
                 :disposition    => "inline", #{attachment, inline}
                 :template       => "marriage_certificates/letter.html.erb",
                 :layout         => "pdf_layout.html",
                 :encoding       => "utf8"
        end
      end
  end

  def new
    @marriage_certificate = MarriageCertificate.new
    render 'new'
  end

  def edit
  end

  def create
    @marriage_certificate = MarriageCertificate.new(marriage_certificate_params)
    current_user.marriage_certificates.push(@marriage_certificate)
    current_user.save
    redirect_to :back, :notice => 'Permohonan telah diterima.'
  end

  def update
    @marriage_certificate.update(marriage_certificate_params)
    redirect_to :back, :notice => 'Permohonan telah diupdate.'
  end

  def destroy
    @marriage_certificate.destroy
    redirect_to :back, :notice => 'Permohonan telah dihapus.'
  end

  private
    def set_marriage_certificate
      @marriage_certificate = MarriageCertificate.find(params[:id])
    end

    def marriage_certificate_params
      params.require(:marriage_certificate).permit(:cert_issuer, :cert_issuer_address,
        :cert_issued_date, :cert_reference_date, :marriage_location, :marriage_day, :marriage_month,
        :marriage_year, :marriage_groom_name, :marriage_groom_birthday, :marriage_groom_passport, :marriage_groom_father,
        :marriage_groom_mother, :marriage_groom_citizenship, :marriage_groom_prev_status, :marriage_bride_name,
        :marriage_bride_birthday, :marriage_bride_passport, :marriage_bride_father, :marriage_bride_mother,
        :marriage_bride_citizenship, :marriage_bride_prev_status, :issued_day, :issued_month, :issued_year,
        :authorized_signer_name, :authorized_signer_post)
    end
end
