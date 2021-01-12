class WelcomeController < ApplicationController
  include WelcomeHelper
  def index
    @user = current_user
    @results = filter ||= []
  end

end
