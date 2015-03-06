#1. Write a program called name.rb that asks the user to type in their name and then prints out a greeting message with their name included.

  puts "what is your name?"
  name = gets.chomp
  puts "That's a lovely name #{name}"

#2. Write a program called age.rb that asks a user how old they are and then tells them how old they will be in 10, 20, 30 and 40 years. Below is the output for someone 20 years old.

  # asks user name
  puts "How old are you?"
  age = gets.chomp.to_i
  age_hash = {10 => age + 10, 20 => age + 20, 30 => age + 30, 40 => age + 40}

  # prints out the user name in 10-40 years
  puts "Wow, in 10 years you'll be: "
  puts age_hash [10]

  puts "In 20 years you'll be: "
  puts age_hash [20]

  puts "In 30 years you'll be: "
  puts age_hash [30]

  puts "In 40 years you'll be: "
  puts age_hash [40]

#3. Add another section onto name.rb that prints the name of the user 10 times. You must do this without explicitly writing the puts method 10 times in a row. Hint: you can use the times method to do something repeatedly.

  # prints the user name 10 times
  10.times do
    puts age
  end

#4. Modify name.rb again so that it first asks the user for their first name, saves it into a variable, and then does the same for the last name. Then outputs their full name all at once.

  # asks for the users first and last name and concatenates them
  puts "What is your first name?"
  first_name = gets.chomp
  puts "what is your last name?"
  last_name = gets.chomp
  puts "Thank you #{first_name} #{last_name}"
