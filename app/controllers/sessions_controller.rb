class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:new, :create, :welcome]

  def new
   
   redirect_to '/welcome'
  end

  def welcome
   current_user = User.find_by(id: session[:user_id])  


  end

  def logged_in?
   current_user = User.find_by(id: session[:user_id])  

   !current_user.nil?  
end

  def login
   @session = Session.new
  end
  def sign_up
   @user = User.find(params[:id])
   redirect_to '/sign_up'
  end

  def create
    @user = User.find_by(username: params[:username])
   if @user && @user.authenticate(params[:password])
      sessions[:user_id] = @user.id
      redirect_to '/welcome'
   else
      redirect_to '/login'
   end
  
  end

  def page_requires_login
  end

  

end
