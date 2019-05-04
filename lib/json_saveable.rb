module Json_Saveable
    
    def to_json
        JSON.dump({
            :name => @name,
            :age => @age,
            :weight => @weight
        })
    end 

    def save_to_HDD_json
        json_data = self.to_json
        puts "please name your save file."
        filename = gets.chomp + ".json"
        File.open(filename,'w') do |file|
            file.write json_data
        end
    end 

end