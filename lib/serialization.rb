# In order to use Yaml and Json you first need to require them in. 
require "yaml"
require "json"

# My class can save and create itelf from JSON files. I need to require those files/modules in before I can use them.
# An instance of a class will be able to use any "include" methods. 
#  A class itself can use methods but it works a bit different. You have to "extend" the class so the class itself can use the methods. See line 20 and 21. 
require "./json_createable.rb" 
require "./json_saveable.rb"
include Json_Saveable

require "./yaml_createable.rb"
require "./yaml_saveable.rb"
include Yaml_Saveable




class Person
    extend Json_Createable
    extend Yaml_Createable

    def initialize name, age, weight
        @name = name
        @age = age
        @weight = weight
    end

    def intro
        puts "Hi, my name is #{@name}. I\'m #{@age} years old and I weigh #{@weight} lbs."
    end

end