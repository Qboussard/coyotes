class Admin::TeamsController < Admin::DashboardController
    def index
        @teams = Team.order('id desc')
    end

    def destroy
        Team.destroy(params[:id])
        redirect_to admin_teams_path, notice: 'La team a bien été supprimé'
    end

    def new
      @team = Team.new
    end
    def create
      @team = Team.new(new_params)

      if @team.save
          redirect_to admin_teams_path, notice: 'La team a bien été créé'
      else
          render 'new'
      end
    end

    def new_params
        params.require(:team).permit(:city)
    end
end
