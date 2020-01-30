class User < ActiveRecord::Base
	belongs_to :city
##validação do formulário, entradas
	validates :name, :birth_date, :phone, :username, :password, :city, presence: true
	##
	validates :username, uniqueness: true
	validates :password, confirmation: true, length: {minimum: 6}
	
	def self.authenticate(params)
		user = User.find_by(username: params[:username])
		if user
			return user if user.password == params[:password]
		end	
	end	
end