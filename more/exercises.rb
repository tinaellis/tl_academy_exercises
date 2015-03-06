#1. Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.

  def checkin(word)
    if /lab/ =~ (word)
      puts word
    else
      puts "No match here."
    end
  end

  checkin("laboratory")
  checkin("Pans Labyrinth")
  checkin("elaborate")
  checkin("polar bear")

#2. What will the following program print to the screen? What will it return?

  Nothing is printed to the screen because the block is never activated with the .call method. The method returns a Proc object.
  def execute(&block)
    block
  end

  execute { puts "Hello from inside the execute method!" }

#3. What is exception handling and what problem does it solve?

  Exception reports show us where the error started and help us diagnose the issue with the information that is provided in the output.
  Exception handling is a way of handling the error by changing the flow of control without exiting the program entirely.

#4. Modify the code in exercise 2 to make the block execute properly.

  def execute(&block)
      block
    end

    execute { puts "Hello from inside the execute method!" }

#5. Why does the following code...

  def execute(block)
    block.call
  end

  execute { puts "Hello from inside the execute method!" }
  #give an error?

  Because blocks need to start with the & percent in order for them to be passed correctly.
