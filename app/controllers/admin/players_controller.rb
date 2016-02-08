class Admin::PlayersController < Admin::DashboardController
    def index
        @players = Player.order('id desc')
    end

  def edit
  end

  def new
      @new = News.new
  end
  def create
      @new = News.new(new_params)

      if @new.save
          redirect_to admin_articles_path, notice: 'Votre article a bien été créé'
      else
          render 'new'
      end
  end

  def destroy
      Player.destroy(params[:id])
      redirect_to admin_players_path, notice: 'Utilisateur a bien été supprimé'
  end
end
