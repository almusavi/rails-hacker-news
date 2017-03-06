class SessionsController < ActionController::Base
  def create
    if user = User.authenticate(session_params)
      session[:user_id] = user.id
      redirect_to "/"
    else
      @error = "Incorrect login"
      render :new_session
    end
  end

  private
  def session_params
    params.require(:session).permit(:username, :password)
  end
end
