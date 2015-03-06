#1. Exercises
  arr = [1, 2, 2, 3]
  arr.uniq

  puts arr  # => what does this print out?

  1, 2, 2, 3

#2. Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:
  Answer: (bangs) - methods that end in ! indicate that the method will modify the object its called on.
  Answer: Question marks indicate that a method returns a boolean value

  # 1. what is != and where should you use it?
  Answer: is not equal to. Can be used in comparisons when outlining a conditional statement.

  # 2. put ! before something, like !user_name


  # 3. put ! after something, like str.gsub()!
  # 4. put ? before something
  # 5. put ? after something
  # 6. put !! before something, like !!user_name
