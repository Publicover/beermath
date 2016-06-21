class SessionsController < ApplicationController
  def new
  end

  def create
    if request.post?
    user = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        redirect_to beers_path, notice: "You're in."
      else
        flash[:notice] = "Well, that didn't work."
      end
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to sessions_create_path, notice: "You'll be back. Probably."
  end
end
