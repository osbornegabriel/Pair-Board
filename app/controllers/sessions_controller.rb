class SessionsController < ApplicationController
  def new
    if logged_in?
      redirect_to slots_url
    else
      render 'new'
    end
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to slots_url
    else
      @errors = ["Email and password combination do not match, please try again."]
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end
