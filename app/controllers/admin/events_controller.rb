class Admin::EventsController < Admin::DashboardController
  def index
    @events = Event.order :date
  end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new new_params

		if @event.save
			redirect_to admin_events_path, notice: 'Votre événement à bien été créé'
		else
			render 'new'
		end
	end

	def destroy
		Event.destroy params[:id]
		redirect_to admin_events_path, notice: 'L événement a bien été supprimé'
	end

private

	def new_params
		params.require(:event).permit(:date, :event)
	end
end