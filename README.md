# Serialization

I am teaching myself about Serialization within Ruby and I created a simple program to demonstrate my knowledge so far. Please feel free to reccomend any changes or let me know if I have something wrong. 


In the instructions below only type the commands preceded by a $ \n
This is no way a turtorial on how to serialize objects in Ruby but rather notes for myself on how to do so and also a bookmark in time for me to come back and see how far ive come. 

Thanks for checking it out, have fun! 

## Instructions
1. Copy this repo onto your local machine. Open your terminal and navigate to the directory where you want to clone the repo to. 
In your terminal type. . .
```
$ git clone https://github.com/BShowen/serialization.git
```

2. Now run IRB and load 'serialization.rb'. 

In your terminal type. . .
```
$ irb 
irb(main):001:0>
$ load "serialization.rb"
=> true
irb(main):002:0>
```

3. Create a new object to be serialized. This is a basic program with one class. Its a Person class that accepts your name as a string followed by your age and weight as Integers. 
```
$ new_person = "Bradley", 26, 155
```
4. Serialize the object. We can use YAML or JSON. You can choose to do one or both. I will demonstrate using both methods. 
```
$ new_person.save_to_HDD_yaml #this saves the object to your hard drive in your current working directry in YAML format
$ new_person.save_to_HDD_json #this saves the object to your hard drive in your current working directry in JSON format
```
After this is done I like to exit out of the terminal completely and then perform step 2 once again. Or you can simply continue on. 

5. Instantiate a new object from the YAML and/or JSON files on your computer. 
```
brand_new_person = Person.create_from_json
brand_new_person = Person.create_from_yaml
```

##### And there you have it! Youve just created and object, serialized it into YAML or JSON. Saved it to your computer. Then loaded up the object right where you left off. 