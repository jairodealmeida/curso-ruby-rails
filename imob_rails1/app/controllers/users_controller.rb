class UsersController < ApplicationController
	def sign_up
		@user = User.new
		@a = 'Listando usuários'
		@cities = City.order(:name).all
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to cities_path
		else
			@cities = City.order(:name).all
			render :sign_up
		end	
	end


	def sign_in
		@user = User.new

	end
	def authenticate
		user = User.authenticate(authenticate_params)
		if user
			session[:user_id] = user.id
			redirect_to root_path
		else
			@user = User.new
			@message = 'Falha na autenticação'
			render :sign_in
		end
	end	
	def authenticate_params
		params.require(:user).permit(:username, :password)
	end
	def user_params
		params.require(:user).
			permit(:name, :phone, :birth_date, :username, :password, :city_id, :password_confirmation)
	end
end