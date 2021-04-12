class Character
    include ActiveModel::Model
    attr_accessor :char_id, :name, :occupation, :img, :status, :nickname, :breaking_bad_app, :better_call_saul_app, :portrayed, :category

    def initialize(name)
        puts 'namee: ' + name
        req = HTTParty.get('https://tarea-1-breaking-bad.herokuapp.com/api/characters?name=' + name)
        @response_code = req.code
        puts "response code: " + @response_code.to_s
        @data = JSON.parse(req.body)[0]
        puts "char info1: " + @data['name']
        puts "char info1: " + @data.to_s
       # puts "char info2: " + @data

        if (req.code == 200)
            @char_id = @data['id']
            @name = @data['name']
            @occupation = @data['occupation']
            @img = @data['img']
            @status = @data['status']
            @nickname = @data['nickname']
            @breaking_bad_app = @data['appearance']     
            @better_call_saul_app = @data['better_call_saul_appearance']    
            @portrayed = @data['portrayed']
            @category = @data['category']
            
        end
    end
end