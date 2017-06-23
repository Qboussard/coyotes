class Admin::DashboardController < ApplicationController
	before_filter :verify_admin


  def index
      @data_players = Player.group(:adult).count.values
      @players_place = Player.group(:place).count.values
      @news_number = News.count
      @tournament_number = Tournament.count

       @match_coyotes_1 = Match.group(:teams_1).count
       @match_coyotes_2 = Match.group(:teams_2).count

       if @match_coyotes_1.nil?
         @match_coyotes_1 = 0
       end

       if @match_coyotes_2.nil?
         @match_coyotes_2 = 0
       end

       @match_coyotes = @match_coyotes_1["Gray"] + @match_coyotes_2["Gray"]
  end



    layout "admin"
    private

	def verify_admin
	  redirect_to root_url unless current_user.try(:admin?)
	end


end
