class HomeController < ApplicationController

  def index
    @carousel_images = Dir.glob('app/assets/images/carousel/*.jpg').sort
  end
end
