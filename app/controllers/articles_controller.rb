class ArticlesController < ApplicationController
  def index
    @news = News.where(category: 'article').paginate(:page => params[:page], :per_page => 5).order('id desc')
    @tournaments = Tournament.order('id desc')
  end

  def show
    @new = News.find(params[:id])
    @tournaments = Tournament.order('id desc')
  end
end
