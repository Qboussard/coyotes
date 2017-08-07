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

  def edit
      @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(new_params)
      # Handle a successful update.
      redirect_to admin_events_path, notice: 'Votre event a bien été modifié'
    else
      render 'edit'
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