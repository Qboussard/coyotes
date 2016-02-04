class ArticlesController < ApplicationController
    def index
        	@news = News.order('id desc')
            @tournaments = Tournament.order('id desc')
        end

        def show
        	@new = News.find(params[:id])
            @tournaments = Tournament.order('id desc')
        end
end
