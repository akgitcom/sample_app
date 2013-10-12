class UsersController < ApplicationController
<<<<<<< HEAD
	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)    # Not the final implementation!
=======
	def new
		@user = User.new
	end
	def show
		@user = User.find(params[:id])
	end
	def create
		@user = User.new(user_params)
>>>>>>> sign-up
		if @user.save
			flash[:success] = "Welcome to the Sample App!"
			redirect_to @user
		else
			render 'new'
		end
	end

	private
<<<<<<< HEAD
	def user_params
		params.require(:user).permit(:name, :email, :password,:password_confirmation)
=======

	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
>>>>>>> sign-up
	end
end
