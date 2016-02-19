class Admin::TournamentsController < Admin::DashboardController
    def index
        @tournaments = Tournament.order('id desc')
    end

    def new
		@tournament = Tournament.new
	end
    def create
	    @tournament = Tournament.new(new_params)

		if @tournament.save
			redirect_to admin_tournaments_path, notice: 'Votre tournois a bien été créé'
		else
			render 'new'
		end
	end

    def edit
            @tournament = Tournament.find(params[:id])
        end

    def update
        @tournament = Tournament.find(params[:id])

        if @tournament.update_attributes(new_params)
          # Handle a successful update.
          redirect_to admin_tournaments_path, notice: 'Votre tournois a bien été modifié'
        else
          render 'edit'
        end
    end

    def destroy
        Tournament.destroy(params[:id])
        redirect_to admin_tournaments_path, notice: 'Le tournois a bien été supprimé'
    end
    def new_params
      params.require(:tournament).permit(:place, :date, :link_picture)
    end
end
