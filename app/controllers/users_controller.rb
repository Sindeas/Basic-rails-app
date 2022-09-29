class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]
  def user_posts
    @user = User.find(params[:user_id])
    @posts = @user.posts
   
    #render plain: {posts: @posts.inspect, user: @user.inspect} 
   end
  
  # GET /users/1 or /users/1.json
  def show
    @user =  User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
  end

  def to_i
    id
  end


  # POST /users or /users.json
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'Successfully created account' 
 
    else
      redirect_to '/login', notice: 'Invalid email or password'
    end 
  end





  private


    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:username, :password, :firstname, :lastname, :email, :user_id)
    end
end
