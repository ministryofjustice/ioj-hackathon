class DefendantsController < ApplicationController

  # before_action :set_appeal, only: [:show, :edit, :update, :destroy]

  # GET /defendants
  def index
    @defendants = Defendant.all
  end

end
