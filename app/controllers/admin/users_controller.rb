class Admin::UsersController < Admin::DashboardController

        def index
    		@users = User.order('id desc')
    	end

        def destroy
    		User.destroy(params[:id])
    		redirect_to admin_users_path, notice: 'Utilisateur a bien été supprimé'
        end

end
