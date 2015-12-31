class Immigration::SplpsController < ApplicationController
  include SimpleCaptcha::ControllerHelpers
  before_action :set_immigration_splp, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  @@VIPACOUNTERDEF = 6600
  def index
    @splps = Splp.all.page(params[:page]).per(20)
    if @splps.count > 0
      render 'index'
    else
      @splp = Splp.new
      render 'new'
    end
  end

  def show
    @splp = Splp.find(params[:id])
    respond_to do |format|
    format.html { render 'show' }
      format.json { render json: @splp }
      format.xml { render xml: @splp }

      format.pdf do
        render :pdf            => "SPLP",
          :disposition    => "inline", #{attachment, inline}
          :template       => "immigration/splps/letter.html.erb",
          :layout         => "splp_pdf_layout.html",
          :encoding       => "utf8"
      end

    end
  end

  def splp_page1
    @splp = Splp.find(params[:id])
    respond_to do |format|
      #format.html { render 'show' }
      #format.json { render json: @splp }
      #format.xml { render xml: @splp }
      format.pdf do
        render :pdf              => "SPLP_1",
                 :disposition    => "inline", #{attachment, inline}
                 :template       => "immigration/splps/splp_page1.html.erb",
                 :layout         => "splp_pdf_layout.html",
                 :encoding       => "utf8",
                 :orientation    => "Landscape",
                 :page_size      => "Letter"
      end
    end
  end

  def splp_page2
    @splp = Splp.find(params[:id])
    respond_to do |format|
    #format.html { render 'show' }
    #format.json { render json: @splp }
    #format.xml { render xml: @splp }
      format.pdf do
        render :pdf            => "SPLP_1",
                 :disposition    => "inline", #{attachment, inline}
                 :template       => "immigration/splps/splp_page2.html.erb",
                 :layout         => "splp_pdf_layout.html",
                 :encoding       => "utf8"
      end
    end
  end

  def splp_page3
    @splp = Splp.find(params[:id])
    respond_to do |format|
    #format.html { render 'show' }
    #format.json { render json: @splp }
    #format.xml { render xml: @splp }
      format.pdf do
        render :pdf            => "SPLP_1",
                 :disposition    => "inline", #{attachment, inline}
                 :template       => "immigration/splps/splp_page3.html.erb",
                 :layout         => "splp_pdf_layout.html",
                 :encoding       => "utf8"
      end
    end
  end

  def new
    @splp = Splp.new
    render 'new'
  end

  def edit
  end

  def create
    @splp = Splp.new(splp_params)
    current_user.splps.push(@splp)
    current_user.save
    redirect_to :back, :notice => 'Permohonan Diterima.'
  end

  def update
    @splp.update(splp_params)
    redirect_to :back, :notice => 'Permohonan telah diupdate.'
  end

  def destroy
    @splp.destroy
    redirect_to :back, :notice => 'Permohonan telah dihapus.'
  end

  def info
  end

  private

  def set_immigration_splp
    @splp = Splp.find(params[:id])
  end

  def splp_params
    params.require(:splp).permit(:application_type, :application_reason, :paspor_type, :full_name, :height, :kelamin, :placeBirth, :dateBirth,
    :citizenship_status, :lastPassportNo, :dateIssued, :placeIssued, :jobStudyInKorea, :jobStudyTypeInKorea, :jobStudyOrganization, :jobStudyAddress,
    :phoneKorea, :addressKorea, :cityKorea, :phoneIndonesia, :addressIndonesia, :kelurahanIndonesia, :kecamatanIndonesia, :kabupatenIndonesia, :dateArrival,
    :sendingParty, :photo, :status, :slip_photo, :payment_date, :arc, :dateIssuedEnd, :immigrationOffice, :sponsor_address_prov_kr, :sponsor_address_prov_id,
    :supporting_doc, :supporting_doc_2, :supporting_doc_3, :supporting_doc_4, :comment, :pickup_office, :pickup_date)
  end
end
