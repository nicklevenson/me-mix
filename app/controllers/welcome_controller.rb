class WelcomeController < ApplicationController
  include WelcomeHelper
  def index
  end

  def search
    get_results
   
  end
end
