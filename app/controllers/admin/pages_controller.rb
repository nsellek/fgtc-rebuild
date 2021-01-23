module Admin
  class PagesController < AdminController
    before_action :set_page, except: [:create]

    def create
      page = Page.new(page_params)
      if page.save
        redirect_to admin_page_path(page)
      end
    end

    def show; end

    def edit; end

    def update; end

    def delete; end

    private

    def page_params
      params
        .require(:page)
        .permit(
          :name,
          :active
        )
    end

    def set_page
      @page = Page.find(params[:id])
    end
  end
end
