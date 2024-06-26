# Arrays
friends = Array["Kevin", "Karen", "Oscar"]
puts friends[0]
puts friends[0]
puts "#{friends[0,2]}"
new_friends = Array.new
new_friends[0] = "Michael"
new_friends[5] = "Holly"
puts new_friends
# methods
# .length, .include?, .reverse, .sort
# you cant sort string and number together inside array


# hashes - like dictionaries that have ( key => value )
puts "--------------------------------------"
states = {
    "Pennsylvania" => "PA",
    "New York" => "NY",
    "Oregon" => "OR",
    :Philippines => "PH",
    1 => "One"
}
puts states
puts states["New York"]
puts states[:Philippines]
puts states[1]


=begin
    method - block of code that do specific tasks to us
    similar to function in javascript
=end
puts "--------------------------------------"
def sayhi
    puts "Hello User"
end
sayhi
# has parameters inside sayhello
# can be given default value to parameter variable
def say_hello(name, age = 24)
    puts "Hello " + name + ", you are " + age.to_s
end
say_hello("Aubrey")


=begin
    Return Statement / Keyword
=end
puts "--------------------------------------"
def cube(num)
    return num * num * num, 70
end
puts cube(3)


=begin
    if Statement
=end
puts "--------------------------------------"
ismale = true
istall = false
# Logical operators (or, and, not) or (||, &&, !)
if ismale and istall
    puts "You are a tall male"
elsif ismale and not istall
    puts "You are a short male"
elsif not ismale and istall
    puts "You are not male but are tall"
else 
    puts "You are not male and not tall"
end
# part 2 using comparison
def highest(array)
    return array.sort.last
end
multiple_array = [1,35,634,234,123,50,62]
puts highest(multiple_array)

def max(num1, num2, num3)
    if num1 >= num2 and num1 >= num3
        return num1
    elsif num2 >= num1 and num2 >= num3
        return num2
    else
        return num3
    end
end
puts max(5, 2, 3)


# Case Expressions
puts "--------------------------------------"
def get_day_name(day)
    day_name = ""

    case day
    when "mon"
        day_name = "monday"
    when "tue"
        day_name = "tuesday"
    when "wed"
        day_name = "wednesday"
    when "thu"
        day_name = "thursday"
    when "fri"
        day_name = "friday"
    when "sat"
        day_name = "saturday"
    when "sun"
        day_name = "sunday"
    else
        day_name = "Invalid abbrevation"
    end
    return day_name
end
puts get_day_name("mon")
puts get_day_name("sut")


# While Loops
# avoid infinite loop
puts "--------------------------------------"
index = 1
while index <= 5
    puts index
    index += 1
end  


# For Loop
puts "--------------------------------------"
friends = ["Kevin", "Karen", "Oscar", "Angela", "Andy"]
for friend in friends
   puts friend 
end
friends.each do |friend|
    puts friend
end
for index in 0..5
    puts index
end
6.times do |index|
    puts index
end


# Exponent Method
puts "--------------------------------------"
# 2, 3 => 2 ^ 3
def pow(base_num, pow_num)
    result = 1
    pow_num.times do |index|
        result = result * base_num
    end
    return result
end
puts pow(5, 3)


# Two types of Comments
puts "--------------------------------------"
puts "Single line of comment => #"
# sample-sample
puts "Multiple line of comments => =begin =end"
=begin
    sample
    sample
=end


# Handling Errors
puts "--------------------------------------"
# lucky_nums = [4, 8, 15, 16, 23, 42]
# num = 10 / 0
begin
    lucky_nums = [4, 8, 15, 16, 23, 42]
    num = 10 / 0
rescue ZeroDivisionError => e
    puts e.to_s + " error"
rescue TypeError => e
    puts e
end