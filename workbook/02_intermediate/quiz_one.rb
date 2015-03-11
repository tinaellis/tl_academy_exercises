#1. write a one-line program that creates 10 lines of the following: The Flintstones Rock!
  10.times { |index| puts "The Flintstones Rock!".rjust(21 + index) }

#2. Create a hash that expresses the frequency with which each letter occurs in this string:
  str = "The Flintstones Rock"
  #Example: {"F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

  result = {}
  letters = ('A'..'Z').to_a.concat( ('a'..'z').to_a )
  letters.each do |letter|
    count = str.scan(letter.to_s).count
    result[letter] = count if count > 0
  end

  puts result

#3. The result of the following statement will be an error:
#puts "the value of 40 + 2 is " + (40 + 2)
  str = "the value of 40 + 2 is"
  num = 40 + 2
  puts "#{str} #{num}"

  puts "the value of 40 + 2 is " + (40 + 2).to_s

#4. What happens when we modify an array while we are iterating over it?
#What would be output by this code?
  ary = [1, 2, 3, 4]
  ary.each do |item|
    p item
    ary.shift(1)
  end

  #result: skips 2 and 4
  1
  3

  ary = [1, 2, 3, 4]
  ary.each do |item|
    p item
    ary.pop(1)
  end

  #result: removes 3 and 4
  1
  2

#5. Alan wrote the following method, which was intended to show all of the factors of the input number.
#How can you change the loop construct (instead of using begin/end/until) to make this work?
  while (dividend > 0) do
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end

#6. Is there a difference between << and +
  Yes

#7. What's wrong with the Fibonacci calculator?

  def fib(first_num, second_num, limit=15)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
  end

  result = fib(0,1)
  puts "result is #{result}"

#8. Write your own version of the rails titleize!
  str = "It's pointless arguing with you. You will be left to your own devices."
  puts str.split.map{ |one_word| one_word.downcase.capitalize }.join(' ')


#9. # Add a method to the Ruby String class that will take an input parameter and
# apply this form of shortening and return a shortened string with an ellipsis
# (but only when the string is too long to start with.)

# Once you have that done, use it to print out a table of this list of characters
# with no field larger than 32 characters in width.

characters = [
    {:character=>"Batman", :real_name=>"Bruce Wayne", :description=>"Comic book superhero who fights crime while wearing a costume loosely based on a bat"},
    {:character=>"Robin", :real_name=>"Dick Grayson", :description=>"Loyal sidekick for batman -- much younger and smaller and sometimes portrayed by girl in later episodes"},
    {:character=>"Commisioner Gordon", :real_name=>"James Gordon", :description=>"Police Commisioner of Gotham City and loyal friend of Batman -- frequently communicates secretly with Batman via signals or a special red BatPhone"},
    {:character=>"Alfred", :real_name=>"Alfred", :description=>"The butler and also a key support player in many episodes providing communications, armament, and also moral support to Batman"}
    ]

class String
  def short_version( length )
    result = self.dup
      starting_length = self.length
      if starting_length > length
        result = result[ 0, length - 1 ]
        result += "…"
      end
    return result
  end
end

characters.each{ |character| p character.values.map{|value| value.short_version(32) }.join("    ") }

#10. Augment the following hash such that it has additional key value pairs giving us a
#{}"demographic" key that has one of three values describing the age group
#the family member is in (kid, adult, senior):

  hash = {
      "Herman" => { "age" => 32, "gender" => "male" },
      "Lily" => { "age" => 30, "gender" => "female" },
      "Grandpa" => { "age" => 402, "gender" => "male" },
      "Eddie" => { "age" => 10, "gender" => "male" },
      "Marilyn" => { "age" => 23, "gender" => "female"}
  }

  age_of_majority = 18
  dotage = 65
  hash.each do | key, value |
    value[:demographics] = "kid" if value["age"] < age_of_majority
    value[:demographics] = "adult" if (age_of_majority..dotage).include? value["age"]
    value[:demographics] = "senior" if value["age"] >= dotage
  end

  puts hash
