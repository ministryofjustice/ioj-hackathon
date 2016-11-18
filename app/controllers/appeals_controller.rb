class AppealsController < ApplicationController
  before_action :set_appeal, only: [:show, :edit, :update, :destroy]

  # GET /appeals
  def index
    @appeals = Appeal.all
  end

  # GET /appeals/1
  def show
  end

  # GET /appeals/new
  def new
    @appeal = Appeal.new
  end

  # GET /appeals/1/edit
  def edit
  end

  # POST /appeals
  def create
    @appeal = Appeal.new(appeal_params)

    if @appeal.save
      redirect_to @appeal, notice: 'Appeal was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /appeals/1
  def update
    if @appeal.update(appeal_params)
      redirect_to @appeal, notice: 'Appeal was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /appeals/1
  def destroy
    @appeal.destroy
    redirect_to appeals_url, notice: 'Appeal was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appeal
      @appeal = Appeal.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def appeal_params
      params.require(:appeal).permit(:full_name, :dob, :solicitor_name, :provider_acct_num)
    end
end
