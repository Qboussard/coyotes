class Admin::PlayersController < Admin::DashboardController
    def index
        @players = Player.order('id desc')
    end

    def new
      @player = Player.new
    end
    def create
      @player = Player.new(new_params)

      if @player.save
          redirect_to admin_players_path, notice: 'Votre Joueur a bien été créé'
      else
          render 'new'
      end
    end

  def destroy
      Player.destroy(params[:id])
      redirect_to admin_players_path, notice: 'L\'utilisateur a bien été supprimé'
  end
  def new_params
    params.require(:player).permit(:lastname, :firstname, :number, :place, :picture, :staff, :adult)
  end
end
