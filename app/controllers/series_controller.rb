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


end