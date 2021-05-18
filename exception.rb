# errors - exception
# error handling - handling exceptions

def divide(num1, num2)
    p num1/num2
end

puts "enter two numbers"
# num1 = gets.chomp
# num2 = gets.chomp

# begin
#     divide(num1,num2)
# rescue
#     puts "zero division error num2 must be non zero value"
# end
# puts "something else executes"

begin
    # divide(1,"")
rescue ZeroDivisionError
    puts "zero division error, num2 must be non zero value"
rescue TypeError
    puts "numbers must be integer"
rescue
    puts "any other error needs to be handled"
end


# error handling syntax
begin
    "run your code"
rescue 
    "do something intelligent to handle the error in your code"
    "if needed repeat begin blog again by running retry"
end


scores = [80.0, 95.5, 98.0, 75.0, 82.0]
possibles = [100.0, 100.0, 100.0, nil, 100.0]
grades = []


scores.each_with_index do |score, index|
    begin
        grades[index] = score/possibles[index]
    rescue TypeError
        # grades[index] = 0
        puts "wrong value, enter a non zero value"
        possibles[index] = gets.chomp.to_f
        # possibles[index] = 100.0
        retry  #executes the begin block again after running the recue block
    end
end

p grades