class UsersController < ApplicationController
before_filter :signed_in_user, only: [:index, :edit, :update, :destroy]
before_filter :correct_user,   only: [:edit, :update]
before_filter :admin_user,     only: :destroy


def index
	 @users = User.paginate(page: params[:page])
  end  

def show
	#the params retrieve the user id, 
	#to found a id number 
    @user = User.find(params[:id])
  end
	
def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_back_or user
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

def edit
   # @user = User.find(params[:id])
  end

   def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end
  
   def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_path
  end

private

    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_path, notice: "Please sign in."
      end
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end
end

 def admin_user
      redirect_to(root_path) unless current_user.admin?
    end
end
end
