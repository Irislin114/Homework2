require 'pry'

class Player
	def initialize(name )
		@name = name
	end
end

class RPS
	def intro
		puts "Welcome!"
		puts "Please enter your name:"
		player_name = gets.chomp.capitalize
		puts "======================="
		puts "Hello #{player_name}"
	end

	def player_choice
			puts "======================="
			puts 'Enter your choice!'
			puts 'R) Rock P) Paper   S) Scissors '
			player_choice = gets.chomp.upcase
			puts "======================="
			puts "Your choice : #{player_choice}"
	end
		
	def pc_choice
		puts "======================="
		puts "Computer's choice:" + ["R","P","S"].shuffle.last
	end

	def check
		#Rock
		if pc_choice == 'R'
			if player_choice == 'R'
				puts "Tie!"
			elsif player_choice == 'P'
				puts "You win!"
			else 
				puts "You lose!"
			end
		#Paper
		elsif pc_choice == 'P'
			if player_choice == 'R'
				puts "You lose!"
			elsif player_choice == 'P'
				puts "Tie!"
			else 
				puts "You win!"
			end
		#Scissors
		else 
			if player_choice == 'R'
				puts "You win!"
			elsif player_choice == 'P'
				puts "You lose!"
			else 
				puts "Tie!"
			end
		end

	def goodbye
		puts "Goodbye!"
	end
end
	def play
		intro
		
		player_choice
		pc_choice
		check 
		begin
			puts "Do you want to continue? Y / N"
		end while gets.chomp.upcase =='Y'
		goodbye
	end
end

RPS.new.play