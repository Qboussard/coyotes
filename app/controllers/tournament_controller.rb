class TournamentController < ApplicationController
    def index
        @tournaments = Tournament.order('id desc')
    end

    def show
        @tournament = Tournament.find(params[:id])

        @matchs = Match.where(tournaments_id: params[:id]).all
        @prensences = Presence.where(tournaments_id: params[:id]).all

    end
end
