#1. Write down whether the following expressions return true or false. Then type the expressions into irb to see the results.

   1. false
   2. false
   3. false
   4. true
   5. true

#2. WWrite a method that takes a string as argument. The method should return the all-caps version of the string, only if the string is longer than 10 characters. Example: change "hi there" to "HI THERE". (Hint: Ruby's String class has a few methods that would be helpful.
  def exercisetwo(something)
    if something.length > 10
      puts something.upcase
    else
      puts something
    end
  end

  exercisetwo("hi there person")

#3. Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 50 and 100, or above 100.
  def user
    puts "Please give me a number between 0 and 100"
    answer = gets.chomp.to_i
    case
    when answer < 51 then puts "Your number is between 0 and 50"
    when answer > 50 && answer < 100 then "Your number is between 50 and 100"
    else
      puts "Your number is greater than 100, please try again"
    end
  end

  puts user

#4. What will each block of code below print to the screen? Write your answer on a piece of paper or in a text editor and then run each block of code to see if you were correct.
  1. "FALSE"
  2. "Did you get it right?"
  3. "Alright now!"

#5. Rewrite your program from exercise 3 using a case statement. Wrap each statement in a method and make sure they both still work.
  def user
    puts "Please give me a number between 0 and 100"
    answer = gets.chomp.to_i
    case
    when answer < 51 then puts "Your number is between 0 and 50"
    when answer > 50 && answer < 100 then "Your number is between 50 and 100"
    else
      puts "Your number is greater than 100, please try again"
    end
  end

#6. Why do you get this error and how can you fix it?
  def usertwo
    puts "Please give me a number between 0 and 100"
    answer = gets.chomp.to_i
    if answer < 51
      puts "Your number is between 0 and 50"
    elsif answer > 50 && answer < 100
      puts "Your number is between 50 and 100"
    else
      puts "Your number is greater than 100, please try again"
    end
  end

  puts usertwo
