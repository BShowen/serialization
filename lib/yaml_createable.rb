module Yaml_Createable

    def from_yaml(yaml_data)
        data = YAML.load(yaml_data)
        self.new(data[:name], data[:age], data[:weight])
    end

    def create_from_yaml
        puts "what is your save file named? include the extension."
        file = gets.chomp
        file_read = File.read(file)
        Person.from_yaml(file_read)
    end

end