# require_relative 'cards'
require_relative 'war'
require_relative 'blackjack'
require 'pry'

class Casino
    def initialize
        puts "=== Welcome to Ruby Casino ==="
        puts "What is your name?"
        @name = gets.to_str
        # puts "How much money are you starting with?"
        @bankroll = 0
        menu
    end

    def menu
        puts "=== Welcome #{@name} to Ruby Casino ==="
        puts "1) War"
        puts "2) Blackjack"
        puts "3) View Account"
        puts "4) Exit"
        handle_input
    end

    def handle_input
        puts "> "
        case gets.to_i
        when 1
            War.new
            menu
        when 2
            Blackjack.new
            menu
        when 3
            view_account
        when 4
            puts "Thanks for playing!"
        end
    end


    def view_account
        puts "Hi, #{@name}"
        puts @bankroll
        puts "Press 1 to go to the Menu"
        case gets.to_i
        when 1
            menu
        else
            puts "Wrong number, try again!"
            view_account
        end
    end

end

c = Casino.new
c