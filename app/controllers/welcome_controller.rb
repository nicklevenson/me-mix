class WelcomeController < ApplicationController
  include WelcomeHelper
  def index
    params.inspect
    @results = filter
  end

end
