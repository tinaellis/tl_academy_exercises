#1. Write a program that contains a method called greeting that takes a name as its parameter. It then prints a greeting message with the name included in it.
  def greeting(name)
    puts "Hello, " + name
  end

  puts greeting("let's multiply!")

#2. What do the following expressions evaluate to?
  1. x = 2    # => 2

  2. puts x = 2    # nil

  3. p name = "Joe"    # => "Joe"

  4. four = "four"    # => "four"

  5. print something = "nothing"    # => nil

#3. Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.
  def multiply(num1, num2)
    num1 * num2
  end

  puts multiply(8,9)

#4. What will the following code print to the screen?
  #It doesn't print anything.


#5 1) Edit the method in exercise #4 so that it does print words on the screen. 2) What does it return now?
  def scream(words)
    words = words + "!!!!"
    puts words
  end

  scream("Yippeee")
  #returns Yippeee!!!!
