class BipbipsController < ApplicationController
	def index
    @news = News.where(category: 'bipbip').paginate(:page => params[:page], :per_page => 5).order('id desc')
  end

  def show
    @new = News.find(params[:id])
  end
end
