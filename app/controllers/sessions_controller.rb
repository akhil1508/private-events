class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:sessions][:email])
    if @user
      current_user=(@user)
      log_in(@user)
    end
    redirect_to controller: 'users', action: 'show', id: @user.id
  end

  def destroy
    log_out
    render 'new'
  end
end
