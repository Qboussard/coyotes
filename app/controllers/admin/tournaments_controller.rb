class Admin::TournamentsController < Admin::DashboardController
    def index
        @tournaments = Tournament.order('id desc')
    end
    def destroy
        Tournament.destroy(params[:id])
        redirect_to admin_tournaments_path, notice: 'La présence à bien été supprimé'
    end
end
