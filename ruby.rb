def start
	print "Would you like to roll the dice?! "
	input = gets.chomp

	if input === "yes"
		print "put a number in from 1 to 6 "
		d = rand(1..6)
		n = gets.chomp.to_i
		puts d
		puts n

			if d === n || d === n + 1 || d === n - 1
				puts "You lived for now."
				print "Round 2, guess again! "
				n = gets.chomp.to_i
				d = rand(1..6)

					if d === n || d === n + 1 || d === n - 1
						puts "Congratulations! You win the game!"
					elsif n > 6 || n < 1
						puts "Please get your head out of your petunias."
						start
					else
						puts "So close!"
					end

			elsif n > 6 || n < 1
				puts "Please get your head out of your petunias."
			 	start
			else
			puts "Get outta here you bum!"
			end
			
	else
	start
	end
end


start