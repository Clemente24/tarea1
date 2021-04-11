class Episode
    include ActiveModel::Model
    attr_accessor :episode_id, :title, :season, :episode_number, :air_date, :characters, :series

    def initialize(unique_id)

        req = HTTParty.get('https://tarea-1-breaking-bad.herokuapp.com/api/episodes/' + unique_id.to_s)
        @data = req.body
        @episode_data = JSON.parse(@data)
        puts @episode_data.to_s
        @characters = @episode_data[0]['characters']
        puts 'holaa, chars: ' + @characters.to_s 
        @title = @episode_data[0]['title']
        @season = @episode_data[0]['season']
        @episode_number = @episode_data[0]['episode']
        @air_date = @episode_data[0]['air_date']
        @series = @episode_data[0]['series']
    end
end