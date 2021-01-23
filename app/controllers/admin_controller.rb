class AdminController < ApplicationController
  layout 'admin_application'

  before_action :set_pages

  private

  def set_pages
    @pages = Page.order(:name)
  end
end
