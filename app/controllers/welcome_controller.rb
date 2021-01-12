class WelcomeController < ApplicationController
  include WelcomeHelper
  def index
    get_results
    byebug
  end

end
