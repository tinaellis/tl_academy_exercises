#1. Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

  list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

  list.each do |n|
  end

  puts list

#2. Same as above, but only print out values greater than 5.

  list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  list.each do |n|

    if n > 4
      puts "#{n}"
    end
  end

#3. Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

  list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  new_arr = []

  list.each do |n|
    if n > 4
      puts "#{n}"
    end

    new_arr = list.select do |n|
      n % 2 != 0
    end

  end

  puts new_arr

#4. Append "11" to the end of the original array. Prepend "0" to the beginning.
  list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

  list.push(11)
  list.unshift(0)

  puts list

#5. Get rid of "11". And append a "3".
  list = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

  list.delete(11)
  list.push(3)

  puts list

#6. Get rid of duplicates without specifically removing any one value.
  list = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 3]
  puts list.uniq

#7. What's the major difference between an Array and a Hash?
  The major difference between an array and a hash is that a hash contains a key value pair for referencing by key.

  hash = store items by associated keys | hash = {}
  array = store items by an ordered index | array = []

#8. Create a Hash using both Ruby syntax styles.

  hash1 = { one: "shawn of the dead", two: "hot fuzz", three: "worlds end" } # new version
  hash2 = { :one => "shawn of the dead", :two => "hot fuzz", :three => "worlds end" } #old version

#9. Suppose you have a hash h = {a:1, b:2, c:3, d:4}
  # 1. Get the value of key `:b`.
  # 2. Add to this hash the key:value pair `{e:5}`
  # 3. Remove all key:value pairs whose value is less than 3.5

  h = {a:1, b:2, c:3, d:4}
  e = {e:5}
  puts h.merge!(e) #2
  puts h[:b] #1
  h.delete_if {|key, value| value < 3.5 }
  puts h

#10. Can hash values be arrays? Can you have an array of hashes? (give examples)

  #THIS IS A HASH W/ ARRAYS
  song = { ninetynine: ["99", "Bottles of beer on the wall", "99 bottles of beer!"],
  ninetyeight: ["98", "Bottles of beer on the wall", "98 bottles of beer!"],
  ninetyseven: ["97", "Bottles of beer on the wall", "97 bottles of beer!"],
  ninetysix: ["96", "Bottles of beer on the wall", "96 bottles of beer!"],
  ninetyfive: ["95", "Bottles of beer on the wall", "95 bottles of beer!"] }
  song.each { |key, value| puts "#{key} #{value}" }

  #THIS IS AN ARRAY W/ HASHES
  arr = [{ninetynine: "Bottles of beer on the wall"},
  {ninetyeight: "Bottles of beer on the wall"},
  {ninetyseven: "Bottles of beer on the wall"},
  {ninetysix: "Bottles of beer on the wall"},
  {ninetyfive: "Bottles of beer on the wall" }]
  puts arr

#11. Look at several Rails/Ruby online API sources and say which one you like best and why.
  http://ruby-doc.org/ seems pretty solid to me. I like that you have the option to view documentation
  on earlier versions of ruby. This is especially helpful since I work on a repo that ulizes ruby 1.9.

#12. Given the following data structures. Write a program that moves the information from the array into the empty hash that applies to the correct person.
  contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
              ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

  contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

  contacts["Joe Smith"][:email] = contact_data[0][0]
  contacts["Joe Smith"][:address] = contact_data[0][1]
  contacts["Joe Smith"][:phone] = contact_data[0][2]
  contacts["Sally Johnson"][:email] = contact_data[1][0]
  contacts["Sally Johnson"][:address] = contact_data[1][1]
  contacts["Sally Johnson"][:phone] = contact_data[1][2]

#13. Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?
  contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
  ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

  contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

  puts "Joe's email is: #{contacts["Joe Smith"][:email] = contact_data[0][0]}"
  puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone] = contact_data[0][2]}"

#14. In exercise 12, we manually set the contacts hash values one by one. Now, programmatically loop or iterate over the contacts hash from exercise 12, and populate the associated data from the contact_data array. Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.
# Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:

  contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
  contacts = {"Joe Smith" => {}}
  fields = [:email, :address, :phone]

  contacts.each do |name, hash|
  fields.each do |field|
  hash[field] = contact_data.shift
  end
  end

#15 Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.
  arr.delete_if { |word| word.start_with?("s") }
  arr.delete_if { |word| word.start_with?("s", "w") }

#16. Take the following array and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.
  a = ['white snow', 'winter wonderland', 'melting ice',
    'slippery sidewalk', 'salted roads', 'white trees']
  a = a.map { |pairs| pairs.split }
  a = a.flatten
  p a

#17. What will the following program output?
  These hashes are the same!
