class EpisodesController < ApplicationController
    def index
        @episode_id = params[:id]
        @seasons = params[:seasons]
        #puts "this is seasonss" + @seasons
        #puts "this is episode_iddd " + @episode_id
    end
end