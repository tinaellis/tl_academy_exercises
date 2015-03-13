#1. What do you expect to happen when the n variable is referenced in the last line of the code below?

  if false
    n = “hello world”
  end

  n

  "n is nil here, and no 'undefined method or local variable' exception is thrown.
  Typically, when you reference an uninitialized variable, Ruby will throw an exception,
  stating that it’s undefined. However, when you initialize a local variable within an if
  block, even if that if block doesn’t get executed, the local variable is initialized to nil."

#2. What is the result of the last line in the code below?
  my_hash = {a: 'hi'}
  n = my_hash[:a]
  n << ' there'

  puts n  #  => "hi there"
  puts my_hash

  #result: hi there {:a=>"hi there"}

#3.
    "one is: one"
    "two is: two"
    "three is: three"

    "one is: one"
    "two is: two"
    "three is: three"

    "one is: two"
    "two is: three"
    "three is: one"

#4.

  #A [1, 2, 3, 4]
  #B 40
  #C 10203040
  #D 10203040
  #E "original"

#5. UUID
  def generate_UUID
      characters = []
      (0..9).each{ | digit | characters << digit.to_s}
      ('a'..'f').each{ | digit | characters << digit}

      uuid = ""
      sections = [8, 4, 4, 4, 12]
      sections.each_with_index do |section, index|
        section.times{ uuid += characters.sample }
        uuid += '-' unless index >= sections.size - 1
      end

      return uuid
  end

#6.

  class String
    def map_words!
      punctuation = self.match(/\p{Punct}$/)[0] || ''
      ary = self.split(/\W/)
      ary.map! { |word| yield word }
      self.replace( ary.join(' ') + punctuation )
      return self
    end
  end

  str.map_words!{|x| x.reverse}

#7.

  def dot_separated_ip_address?(input_string)
    dot_separated_words = input_string.split(".")
    return false if dot_separated_words.size != 4

    while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
      return false if !is_a_number?(word)
    end
    return true
  end
