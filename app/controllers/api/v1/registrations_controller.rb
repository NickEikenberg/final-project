class Api::V1::UsersController < ApplicationController
  before_action :set_current_user, only: [:create, :new]

   #instantiates new user
   def new
    @user = User.new
    render json: @user
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      WelcomeMailer.with(user: @user).welcome_email.deliver_now
      # deliver_now provided by ActiveJob
      #stores saved user id in a session
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'Successfully created account'
      render json: @user
    else
      render json: :new
      # render :new 
    end
  end

    private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
