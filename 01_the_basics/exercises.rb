#1. Add two strings together that, when concatenated, return your first and last name as your full name in one string.
"Tina " + "Ellis"

#2. Use the modulo operator, division, or a combination of both to take a 4 digit number and find 1) the thousands number 2) the hundreds 3) the tens and 4) and the ones.
thousands = 4936 / 1000
hundreds = 4936 % 1000 / 100
tens = 4936 % 1000 % 100 / 10
ones = 4936 % 1000 %100 % 10

#3. Write a program that uses a hash to store a list of movie titles with the year they came out.
movies = {1 => "bandit", 2 => "Bill and Ted", 3 => "scooby doo", 4 => "Mad Men", 5 => "Shawn of the dead"}
puts movies [2]

#4. Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.
movies_array = [1998, 1999, 1983, 2002, 2015]
puts movies_array[0]

#5. Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
factorial = 5 * 6 * 7 * 8
puts factorial

#6. Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.
squared_floats = 5.00 ** 5.00
puts squared_floats
