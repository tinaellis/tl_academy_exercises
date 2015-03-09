#1. Exercises
  arr = [1, 2, 2, 3]
  arr.uniq

  puts arr  # => what does this print out?

  1, 2, 2, 3

#2. Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:
  Answer: (bangs) - methods that end in ! indicate that the method will modify the object its called on.
  Answer: Question marks indicate that a method returns a boolean value


  != is not equal to. Can be used in comparisons when outlining a conditional statement.
  ? : is the ternary operator for if...else
  !!<some object> is used to turn any object into their boolean equivalent.
  !<some object> is used to turn any object into the opposite of their boolean equivalent.

#3. Replace the word "important" with "urgent" in this string:
  str = "Few things in life are as important as house training your pet dinosaur."
  str.gsub!('important', 'urgent')

#4. The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:
  arr = [1, 2, 3, 4, 5]

  arr = [1, 3, 4, 5]
  arr = [2, 3, 4, 5]

#5. Programmatically determine if 42 lies between 10 and 100.

  answer = (10..100).cover?(42)

#6. Starting with the string:

  str = "and seven years ago..."
  str = "Four score and " + str
  str.prepend("Four score and ")

#7. 42

#8. arr.flatten!

#9. barneys_name_number = arr_hash.assoc("Barney")
#=> ["Barney", 2]
