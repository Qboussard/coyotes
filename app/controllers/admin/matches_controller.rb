class Admin::MatchesController < Admin::DashboardController
    def index
        @matches = Match.order('id desc')
    end
    def destroy
        Match.destroy(params[:id])
        redirect_to admin_matches_path, notice: 'Le match a bien été supprimé'
    end
end
