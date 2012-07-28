class UsersController < ApplicationController
  
def show
	#the params retrieve the user id, 
	#to found a id number 
    @user = User.find(params[:id])
  end
	
def create
    @user = User.new(params[:user])
    if @user.save
     sign_in @user
      flash[:success] = "Welcome to Social Community Network!"
      redirect_to @user
    else
      render 'new'
    end
  end
end
