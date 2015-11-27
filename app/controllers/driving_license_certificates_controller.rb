class DrivingLicenseCertificatesController < ApplicationController
  before_action :set_driving_license_certificate, only: [:show, :edit, :update, :destroy]

  def index
    @driving_license_certificates = DrivingLicenseCertificate.all.page(params[:page]).per(20)
    if @driving_license_certificates.count > 0 then
      render 'index'
    else
      @driving_license_certificate = DrivingLicenseCertificate.new
      render 'new'
    end
  end

  def show
    @driving_license_certificate = DrivingLicenseCertificate.find(params[:id])
      respond_to do |format|
      format.html { render 'show' }
      format.json { render json: @driving_license_certificate }
      format.xml { render xml: @driving_license_certificate }
        format.pdf do
          render :pdf            => "Driving License Translation",
                 :disposition    => "inline", #{attachment, inline}
                 :template       => "driving_license_certificates/letter.html.erb",
                 :layout         => "pdf_layout.html",
                 :encoding       => "utf8"
        end
      end
  end

  def new
     @driving_license_certificate = DrivingLicenseCertificate.new
     render 'new'
  end

  def edit
  end

  def create
    @driving_license_certificate = DrivingLicenseCertificate.new(driving_license_certificate_params)
    current_user.driving_license_certificates.push(@driving_license_certificate)
    current_user.save
    redirect_to :back, :notice => 'Permohonan telah diterima.'
  end

  def update
    @driving_license_certificate.update(driving_license_certificate_params)
     redirect_to :back, :notice => 'Permohonan telah diupdate.'
  end

  def destroy
    @driving_license_certificate.destroy
    redirect_to :back, :notice => 'Permohonan telah dihapus.'
  end

  private
    def set_driving_license_certificate
      @driving_license_certificate = DrivingLicenseCertificate.find(params[:id])
    end

    def driving_license_certificate_params
      params.require(:driving_license_certificate).permit(:license_holder_name, :license_holder_address,
        :license_holder_bornplace, :license_holder_borndate, :license_holder_height, :license_holder_job,
        :license_no, :license_police_issuer, :license_district_issuer, :license_issued_date, :license_expired_date,
        :authorized_signer_name, :authorized_signer_post)
    end
end
