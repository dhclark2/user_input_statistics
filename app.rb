
=begin
# single input
puts "What is your name?"
name = gets.chomp

puts "Input one positive integer"
input = gets.chomp

puts "Your name is #{name} and the number you typed is #{input}"
=end

# multiple inputs
puts "What is your name?"
name = gets.chomp


inputs = []
entries = 0
summation = 0
average = 0

loop do
  puts "Enter an integer. Enter nothing to end."
	input_from_user = gets.chomp

	if input_from_user == ""
    break
	else
    entries = entries + 1
    inputs << input_from_user.to_i
    summation = summation + input_from_user.to_i
# Have to add the to_i method here instead of at beinning of loop because the if statement is looking for a string.  If the input is already seen as a number, then it will never see a ""-string input.  Thus the loop will go forever

  end
end

# Prevent average = 0/0 if user enters no integers.  Prevent dividing by zero.
if entries == 0
  puts "The name you gave is #{name} but you provided no integers."

else
  average = summation/entries

  puts "Your name is #{name} and your inputs were #{inputs}"

  puts "Do you want your input statistics? (y/n)"
    answer = gets.chomp
      if answer == "y"
        puts "You made #{entries} inputs"
        puts "The summation of your inputs is #{summation}: "
        puts "The average of your inputs is #{average}: "
      else
        puts "End of Program"
      end
end
