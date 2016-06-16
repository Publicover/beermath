class BeersController < ApplicationController

  def new
  end

  def create
    render plain: params[:beer].inspect
  end

end
