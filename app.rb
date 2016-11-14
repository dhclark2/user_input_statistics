puts "So you want to play a game? (y/n)"
answer = gets.chomp

if answer == "y"
  puts "What is your name?"
  name = gets.chomp
  puts "Do you want to play with numbers or words?"
  answer2 = gets.chomp

  inputs = []
  variance = []
  average = []
  words = []
  entries = 0
  summation = 0

  if answer2 == "numbers"

    loop do
      puts "Enter an integer. Enter nothing to end."
    	input_from_user = gets.chomp

    	if input_from_user == ""
        break

    	else
        entries = entries + 1
        inputs << input_from_user.to_f
        summation = summation + input_from_user.to_f
    # Have to add the to_i method here instead of at beinning of loop because the if statement is looking for a string.  If the input is already seen as a number, then it will never see a ""-string input.  Thus the loop will go forever

      end
    end

    # Prevent average = 0/0 if user enters no integers.  Prevent dividing by zero.
    if entries == 0
      puts "The name you gave is #{name} but you provided no integers."

    else
      average = summation/entries
      # inputs.map {|i| i .. ...}  allows me to perform mathematical operations on each number in the arrary by whatever comes after the "|i| i".  Below, a new array is created using Operation 1 which subtracts the average from each input. Operation 2 squares each value in the new array from operation 1.
      var_each = ((inputs.map {|i| i - average}))
      variance = var_each.map {|i| i ** 2}
      # inject(:+) adds up array.  inject(:*) would multiply values in array.
      variance_avg = (variance.inject(:+)/entries)
      # to use sqrt I have to tell Ruby to look in the methods under Math.
      stan_dev = Math.sqrt(variance_avg)

      puts "Your name is #{name} and your inputs were #{inputs}"

      puts "Do you want your input statistics? (y/n)"
        answer = gets.chomp
          if answer == "y"
            puts "You made #{entries} inputs"
            puts "The summation of your inputs is #{summation}: "
            puts "The average of your inputs is #{average}: "
            puts "The variance of of your inputs is #{variance_avg}: "
            puts "The standard deviation of your inputs is #{stan_dev}: "
          else
            puts "End of Program"
          end
    end

  elsif answer2 == "words"
    puts "lets do that."

    loop do
      puts "Enter a word. Enter nothing to end."
    	word_inputs = gets.chomp

    	if word_inputs == ""
        break

    	else
        entries = entries + 1
        words << word_inputs
      end
    end

    if entries == 0
      puts "The name you gave is #{name} but you provided no words."

    else
      one_word = words.join
      puts "These are all the words you entered: #{words}"
      puts "All together it looks like this: #{one_word}"
      puts "The occurance of the letter e is: #{one_word.count "e"}"
    end

  else
    puts "End of Program.. idiot."
  end

else
  puts "End of Program.. jerk."
end
