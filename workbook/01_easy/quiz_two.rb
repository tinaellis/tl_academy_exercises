#1. In this hash of people and their age, see if there is an age present for "Spot".
  hash = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
  hash.has_key?("Spot")

#2. Add up all of the ages from our current Munster family hash:
  hash = {"Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237}
  total_age = hash.values.inject(:+)
  puts total_age

#3. In the age hash, remove the old people
  hash = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

  hash.keep_if{ |key, value| value < 100 }
  puts hash

#4. Starting with this string, convert the string in the following ways
#(code will be executed on original str above):
  str = "The Munsters are creepy in a good way."
  puts str.capitalize
  puts str.swapcase
  puts str.downcase
  puts str.upcase

#5. We have most of the Munster family in our age hash add ages for Marilyn and Spot to the existing hash
  hash = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
  rest = { "Marilyn" => 22, "Spot" => 237 }

  hash.merge!(rest)
  puts hash

#6. Pick out the minimum age from our current Munster family hash:
  hash = {"Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237}
  min_age = hash.values.min
  puts min_age

#7. See if the string below calls out "Dino" by name:
  str = "Few things in life are as important as house training your pet dinosaur."
  if str.include?("Dino")
    puts "true"
  else
    puts "false"
  end

#8. In the array, find the index of the first name that starts with "Be"
  arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
  index = arr.index{ |name| name[0, 2] == "Be" }

#9. Using array#map!, shorten each of these names to just 3 characters:
  arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
  arr.map! do |name|
    name[0, 3]
  end

#10. Again, shorten each of these names to just 3 characters -- but this time do it all on one line:
  arr.map!{ |name| name[0,3] }
