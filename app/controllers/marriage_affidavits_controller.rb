class MarriageAffidavitsController < ApplicationController
  before_action :set_marriage_affidavit, only: [:show, :edit, :update, :destroy]

  #respond_to :html

  def index
    @marriage_affidavits = MarriageAffidavit.all.page(params[:page]).per(20)
    if @marriage_affidavits.count > 0 then
      render 'index'
    else
      @marriage_affidavit = MarriageAffidavit.new
      render 'new'
    end
    #respond_with(@marriage_affidavits)
  end

  def show
    @marriage_affidavit = MarriageAffidavit.find(params[:id])
      respond_to do |format|
      format.html { render 'show' }
      format.json { render json: @marriage_affidavit }
      format.xml { render xml: @marriage_affidavit }
        format.pdf do
          render :pdf            => "Marriage Affidavit",
                 :disposition    => "inline", #{attachment, inline}
                 :template       => "marriage_affidavits/letter.html.erb",
                 :layout         => "pdf_layout.html",
                 :encoding       => "utf8"
        end
      end
  end

  def new
    @marriage_affidavit = MarriageAffidavit.new
    render 'new'
    #respond_with(@marriage_affidavit)
  end

  def edit
  end

  def create
    @marriage_affidavit = MarriageAffidavit.new(marriage_affidavit_params)
    current_user.marriage_affidavits.push(@marriage_affidavit)
    current_user.save
    redirect_to :back, :notice => 'Permohonan telah diterima.'
    #respond_with(@marriage_affidavit)
  end

  def update
    @marriage_affidavit.update(marriage_affidavit_params)
    redirect_to :back, :notice => 'Permohonan telah diupdate.'
    #respond_with(@marriage_affidavit)
  end

  def destroy
    @marriage_affidavit.destroy
    redirect_to :back, :notice => 'Permohonan telah dihapus.'
    #respond_with(@marriage_affidavit)
  end

  private
    def set_marriage_affidavit
      @marriage_affidavit = MarriageAffidavit.find(params[:id])
    end

    def marriage_affidavit_params
      params.require(:marriage_affidavit).permit(:designated_institution, :authorized_signer_name, :authorized_signer_post,
                     :groom_name, :groom_father, :groom_mother, :groom_address_permanent, :groom_address_recent, :groom_birthday,
                     :groom_job, :groom_citizenship, :groom_id_passport, :groom_divorce_death, :groom_divorce_legal, :groom_divorce_court,
                     :groom_divorce_caseno, :groom_divorce_decreestart, :groom_divorce_decreefinal, :groom_divorce_witness,
                     :bride_name, :bride_father, :bride_mother, :bride_address_permanent, :bride_address_recent, :bride_birthday,
                     :bride_job, :bride_citizenship, :bride_id_passport, :bride_divorce_death, :bride_divorce_legal, :bride_divorce_court,
                     :bride_divorce_caseno, :bride_divorce_decreestart, :bride_divorce_decreefinal, :bride_divorce_witness)
    end
end
