class BirthdayCertificatesController < ApplicationController
  before_action :set_birthday_certificate, only: [:show, :edit, :update, :destroy]

  def index
    @birthday_certificates = BirthdayCertificate.all.page(params[:page]).per(20)
     if @birthday_certificates.count > 0 then
      render 'index'
    else
      @birthday_certificate = BirthdayCertificate.new
      render 'new'
    end

  end

  def show
    @birthday_certificate = BirthdayCertificate.find(params[:id])
    respond_to do |format|
      format.html { render 'show' }
      format.json { render json: @birthday_certificate }
      format.xml { render xml: @birthday_certificate }
        format.pdf do
          render :pdf            => "Birthday Certificate",
                 :disposition    => "inline", #{attachment, inline}
                 :template       => "birthday_certificates/letter.html.erb",
                 :layout         => "pdf_layout.html",
                 :encoding       => "utf8"
        end
      end
  end

  def new
    @birthday_certificate = BirthdayCertificate.new
    render 'new'
  end

  def edit
  end

  def create
    @birthday_certificate = BirthdayCertificate.new(birthday_certificate_params)
    current_user.birthday_certificates.push(@birthday_certificate)
    current_user.save
    redirect_to :back, :notice => 'Permohonan telah diterima.'
  end

  def update
    @birthday_certificate.update(birthday_certificate_params)
    redirect_to :back, :notice => 'Permohonan telah diupdate.'
  end

  def destroy
    @birthday_certificate.destroy
    redirect_to :back, :notice => 'Permohonan telah dihapus.'
  end

  private
    def set_birthday_certificate
      @birthday_certificate = BirthdayCertificate.find(params[:id])
    end

    def birthday_certificate_params
      params.require(:birthday_certificate).permit(:birth_hospital, :birth_city, :birth_day,
                     :birth_month, :birth_year, :birth_baby_name, :birth_baby_sequence, :birth_baby_sex,
                     :birth_baby_mother, :birth_baby_father, :authorized_signer_name, :authorized_signer_post)
    end
end
