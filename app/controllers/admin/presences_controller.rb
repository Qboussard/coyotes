class Admin::PresencesController < Admin::DashboardController
    def index
        @presences = Presence.order('id desc')
    end

    def destroy
        Presence.destroy(params[:id])
        redirect_to admin_presences_path, notice: 'La présence à bien été supprimé'
    end
end
