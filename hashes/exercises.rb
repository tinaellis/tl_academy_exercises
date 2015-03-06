#1. Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only immediate family members' names into a new array.
# Given

  family = {  uncles: ["bob", "joe", "steve"],
              sisters: ["jane", "jill", "beth"],
              brothers: ["frank","rob","david"],
              aunts: ["mary","sally","susan"]
            }


  immediate_family = family.select do |k, v|
    k == :sisters || k == :brothers
  end

  arr = immediate_family.values.flatten
  p arr

#2. Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.

  def amethod
    person = {:weight=>'160 lbs', :hair=>'brown'}
    personality = {:style=>'neat', :attitude=>'friendly'}
    person.merge(personality)
    puts personality
    person.merge!(personality)
  end

  puts amethod


#3. Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.
# * loops through a hash and prints all of the keys
# * Then write a program that does the same thing except printing the values
# * write a program that prints both

  def best_edgar_wright
    movies = { one: "shawn of the dead", two: "hott fuzz", three: "the worlds end", four: "spaced" }
    movies.each_key { |key| puts key }
  end

  puts best_edgar_wright

  def best_edgar_wright2
    movies = { one: "shawn of the dead", two: "hott fuzz", three: "the worlds end", four: "spaced" }
    movies.each_value { |value| puts "The names are #{value}." }
  end

  puts best_edgar_wright2

  def best_edgar_wright3
    movies = { one: "shawn of the dead", two: "hott fuzz", three: "the worlds end", four: "spaced" }
    movies.each_value { |key, value| puts "There are 4 amazing Edgar Wright shows! Here are my favorites in order #{key} #{value}." }
  end

  puts best_edgar_wright3

#4. Given the following expression, how would you access the name of the person?

  person[:name]


#5. What method could you use to find out if a Hash contains a specific value in it? Write a program to demonstrate this use.

  person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

  if person.has_value?("Bob")
    puts "yes"
  else
    puts "nope"
  end


#6. Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:

  words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
            'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
            'flow', 'neon']

  result = {}

  words.each do |word|
    key = word.split('').sort.join
    if result.has_key?(key)
      result[key].push(word)
    else
      result[key] = [word]
    end
  end

  result.each do |k, v|
    puts "------"
    p v
  end

#7. What's the difference between the two hashes that were created?

  x = "hi there"
  my_hash = {x: "some value"}
  my_hash2 = {x => "some value"}

  The first hash that was created used a symbol x as the key. The second hash used the string value of the x variable as the key.

    Additionally, I thought the following was true, but perhaps I was incorrect.
    The first hash is compatible with Ruby 1.9 and up
    The second hash uses a pre Ruby 1.9 syntax

#8. If you see this error, what do you suspect is the most likely problem?

  B. There is no method called keys for Array objects.
























