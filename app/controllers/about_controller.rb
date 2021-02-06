class AboutController < ApplicationController
  before_action :set_page

  def index
    @images = Dir.glob("app/assets/images/about/#{@page}.jpg").sort
  end

  private

  def set_page
    @page = params[:page]
    @dropdown = 'about'
  end
end
