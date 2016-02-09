class Admin::MatchesController < Admin::DashboardController
    def index
        @matches = Match.order('id desc')
    end
    def destroy
        Match.destroy(params[:id])
        redirect_to admin_matches_path, notice: 'Le match a bien été supprimé'
    end

    def new
      @match = Match.new
      @tournaments = Tournament.order('id desc')
    end
    def create
      @match = Match.new(new_params)

      if @match.save
          redirect_to admin_matches_path, notice: 'Votre match a bien été créé'
      else
          render 'new'
      end
    end

    def new_params
      params.require(:match).permit(:tournaments_id, :teams_1, :teams_2, :score)
    end
end
