#1. Show an easier way to write this array:
  arr = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
  arr = %w(Fred Barney Wilma Betty BamBam Pebbles)

#2. How can we add the family pet "Dino" to our usual array:
  arr << "Dino"
  puts arr

#3. How can we add multiple items to our array?
  arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
  arr.push("Dino", "Multiple", "Items")
  puts arr

#4. Shorten this sentence, remove everything starting with "house".
  str = "Few things in life are as important as house training your pet dinosaur."
  str.delete! "house"
  puts str

#5. Write a one-liner to count the number of lower-case 't' characters in the following string:
  str = "The Flintstones Rock!"
  count = str.scan('t').count
  puts count

#6. Given these two strings, How can we easily compare their length?
  str1 = "Fred"
  str2 = "Barney"
  puts str1.length.to_i - str2.length.to_i

#7. How could we easily center that title above the table with spaces?
  title = "Flintstone Family Members"
  title.center(40)

#8. Given our usual array, arrange the names in order of ascending length.
  arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
  puts arr.sort!{ |a, b| a.size <=> b.size }

#9. Sort descending
  arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
  puts arr.sort!{ |a, b| b.size <=> a.size }

#10. If we change our array just a bit (note the capitalization), and use the default alphabetical comparison of sort!, we get this odd result:
  arr = %w( fred Barney Wilma betty BamBam Pebbles)
  ["BamBam", "Barney", "Pebbles", "Wilma", "betty", "fred"]
  #How can we use a built in method of string to get the intended
  #result of a normally alphabetically sorted list of names?




