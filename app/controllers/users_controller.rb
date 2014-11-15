class UsersController < ApplicationController
	require 'bcrypt'
	def login
		# @user=Users.all
		# render 'index'
		render 'login'
	end

	def index
		render 'login'
	end

	def create
		@user = User.new
		@user.name = params[:signUp][:first_name]
		@user.email = params[:signUp][:email]
		@user.password = params[:signUp][:password]
		@user.salt = BCrypt::Engine.generate_salt
		@user.password_hash= Bcrypt::Engine.hash_secret(params[:signUp][:password], @user.salt)
		if @user.save
			redirect_to :controller =>'users', :action => 'index'
		else
			render 'index'
		end
	end


	def new
		render 'new'
		
	end

	def logout
		
		redirect_to :controller => 'users', :action=>'index'
		
	end

	def destroy
		
	end
	# def show
	# 	render 'signup'
	# end


end