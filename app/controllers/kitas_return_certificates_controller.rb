class KitasReturnCertificatesController < ApplicationController
  before_action :set_kitas_return_certificate, only: [:show, :edit, :update, :destroy]

  def index
    @kitas_return_certificates = KitasReturnCertificate.all.page(params[:page]).per(20)
    if @kitas_return_certificates.count > 0 then
      render 'index'
    else
      @kitas_return_certificate = KitasReturnCertificate.new
      render 'new'
    end
  end

  def show
    @kitas_return_certificate = KitasReturnCertificate.find(params[:id])
    respond_to do |format|
      format.html { render 'show' }
      format.json { render json: @kitas_return_certificate }
      format.xml { render xml: @kitas_return_certificate }
        format.pdf do
          render :pdf            => "KITAS Return Evidence Letter",
                 :disposition    => "inline", #{attachment, inline}
                 :template       => "kitas_return_certificates/letter.html.erb",
                 :layout         => "pdf_layout.html",
                 :encoding       => "utf8"
        end
      end
  end

  def new
    @kitas_return_certificate = KitasReturnCertificate.new
    render 'new'
  end

  def edit
  end

  def create
    @kitas_return_certificate = KitasReturnCertificate.new(kitas_return_certificate_params)
    current_user.kitas_return_certificates.push(@kitas_return_certificate)
    current_user.save
    redirect_to :back, :notice => 'Permohonan telah diterima.'
  end

  def update
    @kitas_return_certificate.update(kitas_return_certificate_params)
    redirect_to :back, :notice => 'Permohonan telah diupdate.'
  end

  def destroy
    @kitas_return_certificate.destroy
    redirect_to :back, :notice => 'Permohonan telah dihapus.'
  end

  private
    def set_kitas_return_certificate
      @kitas_return_certificate = KitasReturnCertificate.find(params[:id])
    end

    def kitas_return_certificate_params
      params.require(:kitas_return_certificate).permit(:kitas_holder_name, :kitas_holder_passport, :kitas_holder_birthday,
        :kitas_holder_citizenship, :kitas_issued_no, :kitas_issuing_office, :kitas_monitoring_book, :kitas_return_date,
        :authorized_signer_name, :authorized_signer_post)
    end
end
