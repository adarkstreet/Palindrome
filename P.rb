require 'pry'

def menu
    puts 'Welcome to the mighty Palindrom checker!'
    puts '==================================='
    puts '1) Enter your word or phrase'
    puts '2) Exit this program'
    input_1 = gets.to_i
    case input_1
    when 1
        start
    else
        puts "Exiting Palindrome checker."
        exit
    end
end

def start
    puts 'Please enter the word or phrase you would like to check'
    @word = gets.strip.downcase
    checking
end

def checking
    split_string = @word.split
    @ra = []
    @word.size.times { @ra << split_string.pop} #tring to push and pop from the @word string to the reversed array but my syntax is off somewhere
    @ra.join
    if @ra != @word
        puts "Your word is not a Palindrom"
        menu
    else @ra = @word
        puts "Your word is indeed a Palindrome"
        menu
    end
end

menu.new