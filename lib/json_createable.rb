module Json_Createable

    def from_json(json_file_read_data)
        data = JSON.load(json_file_read_data)
        self.new(data["name"],data["age"])
    end

    def create_from_json
        puts "what is your save file named? include the extension."
        file = gets.chomp
        file_read = File.read(file)
        Person.from_json(file_read)
    end

end