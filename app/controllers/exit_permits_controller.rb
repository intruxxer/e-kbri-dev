class ExitPermitsController < ApplicationController
  before_action :set_exit_permit, only: [:show, :edit, :update, :destroy]

  def index
    @exit_permits = ExitPermit.all.page(params[:page]).per(20)
    if @exit_permits.count > 0 then
      render 'index'
    else
      @exit_permit = ExitPermit.new
      render 'new'
    end
  end

  def show
    @exit_permit = ExitPermit.find(params[:id])
      respond_to do |format|
      format.html { render 'show' }
      format.json { render json: @exit_permit }
      format.xml { render xml: @exit_permit }
        format.pdf do
          render :pdf            => "Exit Permit Dinas",
                 :disposition    => "inline", #{attachment, inline}
                 :template       => "exit_permits/letter.html.erb",
                 :layout         => "pdf_layout.html",
                 :encoding       => "utf8"
        end
      end
  end

  def new
    @exit_permit = ExitPermit.new
    render 'new'
  end

  def edit
  end

  def create
    @exit_permit = ExitPermit.new(exit_permit_params)
    current_user.exit_permits.push(@exit_permit)
    current_user.save
    redirect_to :back, :notice => 'Permohonan telah diterima.'
  end

  def update
    @exit_permit.update(exit_permit_params)
    redirect_to :back, :notice => 'Permohonan telah diupdate.'
  end

  def destroy
    @exit_permit.destroy
    redirect_to :back, :notice => 'Permohonan telah dihapus.'
  end

  private
    def set_exit_permit
      @exit_permit = ExitPermit.find(params[:id])
    end

    def exit_permit_params
      params.require(:exit_permit).permit(:grantee_name, :grantee_birthplace, :grantee_birthdate, :grantee_passport,
                                          :grantee_passport_issuer, :grantee_passport_issued, :grantee_passport_expired,
                                          :grantee_job, :grantee_address_korea, :authorized_signer_name, :authorized_signer_post)
    end
end
