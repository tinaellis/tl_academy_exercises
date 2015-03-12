#1. Hashes are commonly found to be more complex than the simple one we saw earlier.
#Figure out the total age of just the male members of the family.
  hash = {
      "Herman" => { "age" => 32, "gender" => "male" },
      "Lily" => { "age" => 30, "gender" => "female" },
      "Grandpa" => { "age" => 402, "gender" => "male" },
      "Eddie" => { "age" => 10, "gender" => "male" }
    }

  total_male_age = 0
  hash.each do |key, value|
    male_family_member = value["gender"] == "male"
    total_male_age += male_family_member ? value["age"] : 0
  end

  puts total_male_age

#2. #Augment the following hash such that it has additional key value pairs that can act
#as a "sort index" which will allow us to quickly re-arrange a list of our family
#members as either sorted by name-length or sorted by their original order as shown here:

  hash = {
    "Herman" => { "age" => 32, "gender" => "male" },
    "Lily" => { "age" => 30, "gender" => "female" },
    "Grandpa" => { "age" => 402, "gender" => "male" },
    "Eddie" => { "age" => 10, "gender" => "male" }
  }

  index = 0
  hash = hash.each{ |key, value| value[:original_order] = index; index += 1 }
  hash = hash.each{ |key, value| value[:length_order] = key.length }
  #hash.to_a.sort{|a, b| a[1][:original_order] <=> b[1][:original_order] }.each{ |item| puts item }
  #or
  hash.to_a.sort{|a, b| a[1][:length_order] <=> b[1][:length_order] }.each{ |item| puts item }

#3.
  hash = {
    "Herman" => { "age" => 32, "gender" => "male" },
    "Lily" => { "age" => 30, "gender" => "female" },
    "Grandpa" => { "age" => 402, "gender" => "male" },
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
  }

  hash.each_pair do | key, value |
    puts "#{key} is a #{value['age']} year old #{value['gender']}"
  end

#4. How can we refactor this exercise to make the result easier predict and easier for the next programmer to maintain?
  def not_so_tricky_method(a_string_param, an_array_param)
    a_string_param += "rutabega"
    an_array_param << "rutabega"

    return a_string_param, an_array_param
  end

  my_string = "pumpkins"
  my_array = ["pumpkins"]
  a_string_param, an_array_param = not_so_tricky_method(my_string, my_array)

  puts "My string looks like this now: #{my_string}"
  puts "My array looks like this now: #{my_array}"

#5. Use this technique to break up the following string and put it back together with the words in reverse order:
  str = "Humpty Dumpty sat on a wall."
  ary = str.split(/\W/)
  ary.reverse!
  puts str = ary.join(' ') + '.'

#6. What is the output of the following code?
  answer = 42

  def mess_with_it(some_number)
    some_number += 8
  end

  new_answer = mess_with_it(answer)

  p answer - 8

  #output:
  34

#7. Did the family's data get ransacked, or did the mischeif only
#mangle a local copy of the original hash? (why?)

  #the program does not reassign demo_hash -- it just uses it as-is. So the actual hash object that is being messed with inside of the method IS munster_hash.

#8. Write a new patch called pretty_short_version which will return a string that ends on a word boundary and is never longer than the length parameter.
  class String
    def pretty_short_version( length )
      result = self.dup
      starting_length = self.length
      if starting_length > length
          length -= 1   # leave room for ellipsis
          words = result.split
          result = words.shift
          result = result[0, length] if result.length > length
          result += ' ' + words.shift while(!words.empty? && ((result.length + words.first.length + 1) < length))
          result += "…"
      end

      return result
    end
  end

#9. What is the result of the following call?
  def rps(fist1, fist2)
    if (fist1 == "rock")
      (fist2 == "paper") ? "paper" : "rock"
    elsif (fist1 == "paper")
      (fist2 == "scissors") ? "scissors" : "paper"
    else
      (fist2 == "rock") ? "rock" : "scissors"
    end
  end

  puts rps( rps( rps("rock", "paper"), rps("rock", "scissors")), "rock")

  #result:
  paper

#10. Consider these two simple methods:
  def foo(param="no")
    "yes"
  end

  def bar(param="no")
    param == "no" ? "yes" : "no"
  end

  puts maybe = bar(foo())

  #result:
  no















