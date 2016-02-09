class Admin::PresencesController < Admin::DashboardController
    def index
        @presences = Presence.order('id desc')
    end

    def destroy
        Presence.destroy(params[:id])
        redirect_to admin_presences_path, notice: 'La présence à bien été supprimé'
    end

    def new
      @presence = Presence.new
      @tournaments = Tournament.order('id desc')
      @players = Player.order('lastname asc')
    end
    def create
      @presence = Presence.new(new_params)

      if @presence.save
          redirect_to new_admin_presence_path, notice: 'Votre présence a bien été créé'
      else
          render 'new'
      end
    end

    def new_params
      params.require(:presence).permit(:tournaments_id, :name)
    end
end
