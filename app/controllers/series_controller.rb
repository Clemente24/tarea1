class SeriesController < ApplicationController
    def index
        @serie_elegida = params[:id]
        #puts @serie_elegida
        #initialize(serie_elegida)
        @serie = Serie.new(@serie_elegida)
        @episodios = @serie.episodes
        @seasons = @serie.seasons
        # self.seasons = @seasons
    end

    def show
        @episode_id = params[:id]
        @episode = Episode.new(@episode_id)
        @characters = @episode.characters
        @title = @episode.title
        @season = @episode.season
        @episode_number = @episode.episode_number
        @air_date = @episode.air_date
        @series = @episode.series

    end

    def character
        @requested_name = params[:name]
        formatted_name = @requested_name.gsub(" ", "+")
        @char = Character.new(formatted_name)
        puts formatted_name

        @char_id = @char.char_id
        @name = @char.name
        @occupation = @char.occupation
        @img = @char.img
        @status = @char.status
        @nickname = @char.nickname
        @breaking_bad_app = @char.breaking_bad_app
        @better_call_saul_app = @char.better_call_saul_app    
        @portrayed = @char.portrayed
        @category = @char.category

    end
end