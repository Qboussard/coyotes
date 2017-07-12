class Admin::PresencesController < Admin::DashboardController
  def index
		@presences = Presence.paginate(:page => params[:page], :per_page => 20).order('id desc')
  end

  def new
    @presence = Presence.new
    @tournaments = Tournament.order('id desc')
    @players = Player.order('lastname asc')
  end

  def create
    params[:presence][:player].each_with_index do |player|
      Presence.create! tournaments_id: params[:presence][:tournaments_id], name: "#{player[1]}"
    end

    redirect_to admin_presences_path, notice: 'Votre présence a bien été créé'
  end

  def destroy
    Presence.destroy(params[:id])
    redirect_to admin_presences_path, notice: 'La présence à bien été supprimé'
  end

  def new_params
    params.require(:presence).permit(:tournaments_id, :name)
  end
end
