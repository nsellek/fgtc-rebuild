class AdminController < ApplicationController
  layout 'admin_application'

  before_action :set_pages,
                :to_root

  private

  def set_pages
    @pages = Page.order(:name)
  end

  def to_root
    redirect_to root_path
  end
end
