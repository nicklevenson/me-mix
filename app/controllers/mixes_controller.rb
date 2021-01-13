class MixesController < ApplicationController
  include MixesHelper
  def new

  end
  def create
    params.inspect
    mix = current_user.mixes.find_or_create_by(mix_params)
    create_media(mix)

  end

  private

  def mix_params
    params.require(:mix).permit(:title)
  end

  def media_params
    params.require(:mix).permit(:media)
  end


end
