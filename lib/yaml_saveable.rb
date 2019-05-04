module Yaml_Saveable
    
    def to_yaml
        YAML.dump({
            :name => @name,
            :age => @age,
            :weight => @weight
        })
    end

    def save_to_HDD_yaml
        yaml_data = self.to_yaml
        puts "please name your save file."
        filename = gets.chomp + ".yaml"
        File.open(filename,'w') do |file|
            file.write yaml_data
        end
    end

end