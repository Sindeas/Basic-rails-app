class SessionsController < ApplicationController
  def new; end
  def create
    @user = User.find_by_username(params[:username])
    ##authenticate user credentials
    if @user && @user.authenticate(params[:password])
      #set session and redirect on success
      session[:user_id] = @user.id 
      redirect_to '/posts', notice: 'Logged in successfully'
    else
      #error message on fail

      redirect_to '/login', notice: 'Invalid email or password'

    end

  end
  def destroy
    # deletes user session
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged Out'
  end

end
