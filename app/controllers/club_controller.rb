class ClubController < ApplicationController
  def index
    @players = Player.order('id asc')
  end
end
