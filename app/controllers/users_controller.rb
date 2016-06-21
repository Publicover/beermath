class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to beers_path, notice: "You exist now."
    else
      redirect_to users_create_path, notice: "Nah, log in first."
    end
  end

  def destroy
    if @user.destroy
      redirect_to users_url, notice: 'User was successfully destroyed.'
    end
  end

  def update
  end

  private
    def user_params
      params.require(:user).permit(:id, :password, :token, :email)
    end

end
