class CasesController < ApplicationController

  # before_action :set_appeal, only: [:show, :edit, :update, :destroy]

  # GET /defendants
  def index
    @cases = Case.all
  end

end