class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to questions_path
    else 
      respond_to do |format|
          format.html { redirect_to new_user_session_path, notice:'Login failed!Username or password incorrect!' }
    end
  end
end
end
