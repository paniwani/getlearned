class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: "User was successfully created." }
      else
        format.html { render action: "new" }
      end
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def index
  end

  private
    def user_params 
      params.require(:user).permit(:role, :learn, :email, :zipcode, :id)
    end
end