#1. Predict how the values and object ids will change throughout the flow of the code
  "Ruby re-used '42 object with id 85' when the value was the same. Ruby didn’t change
  the id for any of the objects. Ruby created new objects and referred to them with
  original names. Ruby reused the objects when it could, but used different objects for
  the values were different. Once we leave the block, the variables defined within the
  block lost their meaning."

#2. Predict how the values and object ids will change throughout the flow of the code
  "Before the block we changed the values of the “outers”. Ruby used new objects for
  these variables. Ruby reused the objects that had the same values and even though we
  changed the values of the outer variables inside the method call, we still have the
  same values and same object id’s after the method call. The methods gets values of the
  parameters we pass but the parameter variables inside the method have no other
  relationship to those outside the method."

#3. Study the following code and state what will be printed...and why:
  def tricky_method(a_string_param, an_array_param)
    a_string_param += "rutabaga"
    an_array_param << "rutabaga"
  end

  my_string = "pumpkins"
  my_array = ["pumpkins"]
  tricky_method(my_string, my_array)

  puts "My string looks like this now: #{my_string}"
  puts "My array looks like this now: #{my_array}"

  #result
  My string looks like this now: pumpkins
  My array looks like this now: ["pumpkins", "rutabaga"]

  "Because of the String#+= and Array<< operations, the data is handled differently.
  The string operation creates a new string object and the reference to this new object
  is put in the internal variable of the method. With the array operator Ruby keeps the
  same object that was passed in and appends the new element to it."

#4. Let's turn the tables and have the string show a modified output
  def tricky_method_two(a_string_param, an_array_param)
  a_string_param.gsub!('pumpkins', 'rutabaga')
  an_array_param = ['pumpkins', 'rutabaga']
  end

  my_string = "pumpkins"
  my_array = ["pumpkins"]
  tricky_method_two(my_string, my_array)

  puts "My string looks like this now: #{my_string}"
  puts "My array looks like this now: #{my_array}"

  My string looks like this now: rutabaga
  My array looks like this now: ["pumpkins"]

  "The gsub method compares the length of the before and after string and sees that they
  are the same. The array assignment array is a new object and we’re setting the internal
  array variable equal to that new array literal object."

#5. How could the un-needed duplication in this method be removed?

  #Ruby will automatically evaluate statements - remove the conditionals and true/false statements
  def color_valid
    color == "blue" || color == "green"
  end
