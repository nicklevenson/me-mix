class ApplicationController < ActionController::Base
  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    end
  end
end
