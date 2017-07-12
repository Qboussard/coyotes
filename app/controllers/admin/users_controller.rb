class Admin::UsersController < Admin::DashboardController

  def index
		@users = User.paginate(:page => params[:page], :per_page => 20).order('id desc')
  end

	def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(new_params)
      # Handle a successful update.
      redirect_to admin_users_path, notice: 'le compte a bien été modifié'
    else
      render 'edit'
    end
  end

  def destroy
    User.destroy(params[:id])
    redirect_to admin_users_path, notice: 'Utilisateur a bien été supprimé'
  end

	def new_params
    params.require(:user).permit(:admin)
  end

end
