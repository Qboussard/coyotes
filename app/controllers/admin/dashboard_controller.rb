class Admin::DashboardController < ApplicationController
	before_filter :verify_admin

    layout "admin"
    private

	def verify_admin
	  redirect_to root_url unless current_user.try(:admin?)
	end

  def index
      @players = Player.order('id desc')
  end
end
