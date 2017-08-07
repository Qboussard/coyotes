class Admin::FeaturesController < Admin::DashboardController
  def index
    @features = Features.order('id desc')
  end
  def new
    @feature = Features.new
  end
  def create
    @feature = Features.new(new_params)

    if @feature.save
      redirect_to admin_features_path, notice: 'Votre demande a bien été créé'
    else
      render 'new'
    end
  end
  def edit
    @feature = Features.find(params[:id])
  end

  def update
    @feature = Features.find(params[:id])

    if @feature.update_attributes(new_params)
      # Handle a successful update.
      redirect_to admin_features_path(@feature.id), notice: 'Votre demande a bien été modifié'
    else
      render 'edit'
    end
  end
  def destroy
    Features.destroy(params[:id])
    redirect_to admin_articles_path, notice: 'Votre demande a bien été supprimé'
  end
private

  def new_params
    params.require(:features).permit(:title, :content, :state, :dev_link)
  end
end