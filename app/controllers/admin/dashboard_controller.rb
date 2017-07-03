class Admin::DashboardController < ApplicationController
  before_filter :verify_admin
  layout "admin"

  def index
    @data_players = Player.group(:adult).count.values
    @players_place = Player.group(:place).count.values
    @news_number = News.count
    @tournament_number = Tournament.count
		@players_number = Player.count
    @match_coyotes = Match.where(["teams_1 = ? or teams_2 = ?", 'Coyotes de Gray', 'Coyotes de Gray']).count
  end

  private

  def verify_admin
    redirect_to root_url unless current_user.try(:admin?)
  end

end
