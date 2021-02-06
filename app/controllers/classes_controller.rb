class ClassesController < ApplicationController
  before_action :set_page

  def index
    @images = Dir.glob("app/assets/images/classes/#{@page}.jpg").sort
  end

  private

  def set_page
    @page = params[:page]
    @dropdown = 'classes'
  end
end