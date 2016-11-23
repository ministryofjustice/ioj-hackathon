class CasesController < ApplicationController

  # before_action :set_appeal, only: [:show, :edit, :update, :destroy]

  # GET /cases
  def index
    @cases = Case.order(:appeal_date)
  end



  # GET /cases/1/edit
  def edit
    @case = Case.find(params[:id])
  end

end