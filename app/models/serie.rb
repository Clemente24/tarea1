class Serie
    include ActiveModel::Model
    attr_accessor :episodes, :seasons

    def initialize(serie_elegida)
        if serie_elegida == "Better_Call_Saul"
            eleccion_serie = "episodes?series=Better+Call+Saul"
        elsif serie_elegida == "Breaking_Bad"
            eleccion_serie = "episodes?series=Breaking+Bad"
        end
        req = HTTParty.get('https://tarea-1-breaking-bad.herokuapp.com/api/' + eleccion_serie)
        @data = req.body
        #@data.each { |dato| puts dato }

        @episodes = JSON.parse(@data)

        ep_size = @episodes.size()
        #puts @episodes
        puts "Episodes size: " + ep_size.to_s
        @n_seasons = @episodes[ep_size - 1]['season'].to_i
        @seasons = []
        puts "Number of seasons: " + @n_seasons.to_s
        
        range1 = 1..@n_seasons
        range1.each do |s|
            @seasons.append([])
        end
        
        @episodes.each do |ep|
            @seasons[ep['season'].to_i - 1].append(ep)
        end
        puts "Seasons: " + @seasons.to_s
    end
end