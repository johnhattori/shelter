puts "Welcome to the SPCA." 

animals = [ {"name" => "Zucca",
             "kind" => "cat", 
             "gender" => "male",
             "toy" => "feather"},
             {"name" => "Torta",
             "kind" => "cat", 
             "gender" => "female",
             "toy" => "rubber string"},
             {"name" => "Hector",
             "kind" => "dog", 
             "gender" => "male",
             "toy" => "ball"},
             {"name" => "Billie",
             "kind" => "dog", 
             "gender" => "male",
             "toy" => "bone"},
             {"name" => "Petra",
             "kind" => "bird", 
             "gender" => "female",
             "toy" => "bite guard"},
          ]

reply = nil
while reply != "l"
 puts "Would you like to (a)dopt, (g)ive up an animal for adoption or (l)eave?" 
 reply = gets.chomp.downcase
 if reply == "a"
  # TODO: deal with no animals
  puts "Pick a number for your animal:"
  animals.each_with_index do |animal, i|
    puts "#{i}: #{animal.inspect}"
  end
  # TODO: handle invalid choice (non integer and out of range)
  animal_choice = gets.chomp.to_i
  puts "You picked: #{animals.delete_at(animal_choice)['name']}"
 elsif reply == "g"
  puts "giving"
 elsif reply != "l"
  puts "You typed '#{reply}'. Valid input 'a', 'g' or 'l'"
 end
    

	
end
puts "Thanks for coming in to visit us."


