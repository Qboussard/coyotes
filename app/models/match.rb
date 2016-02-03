class Match < ActiveRecord::Base
    belongs_to :tournaments
    belongs_to :teams
end
