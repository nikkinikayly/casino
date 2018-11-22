# require_relative 'cards'
# require_relative 'menu'
require 'pry'

class Blackjack

    def initialize
        def initialize
            @deck = [
              {val:2, name:'2'}, 
              {val:3, name:'3'},
              {val:4, name:'4'},
              {val:5, name:'5'},
              {val:6, name:'6'},
              {val:7, name:'7'},
              {val:8, name:'8'},
              {val:9, name:'9'},
              {val:10, name:'10'},
              {val:10, name:'J'},
              {val:10, name:'Q'},
              {val:10, name:'K'},
              {val:11, name:'A'}]
              start
          end
    end

    def start
      # puts "How much would you like to bet?"
      puts "Welcome to Blackjack"
      puts "You will win or lose $10"
      deal_cards
    end

    def deal_cards
        @user_card = @deck.sample[:val] + @deck.sample[:val]
        puts @user_card
        hit_or_stay
    end

    def hit_or_stay
           puts "Would you like to hit or stay?"
           puts "1) Hit"
           puts "2) Stay"
           choice = gets.to_i
        case choice

        when 1
          hit
        when 2
          stay
        else 
          puts "Try again"
          hit_or_stay
        end
      end

    def hit
        @user_card = @user_card + @deck.sample[:val]
        puts @user_card
        if @user_card > 21
          puts "You lose! Sorry"
          # @bankroll = @bankroll - 10
        else
        hit_or_stay
        end
    end

    def stay
      @dealer_cards = @deck.sample[:val] + @deck.sample[:val] 
      puts "Dealer Total: #{@dealer_cards}, User Total: #{@user_card}"
      if @dealer_cards > 21
        puts "You won! Good job"
      elsif @dealer_cards > @user_card
        puts "Sorry you lose!"
        # @bankroll = @bankroll + 10
      elsif @dealer_cards < @user_card
        puts "Good job! You won!"
        # @bankroll = @bankroll + 10
      else 
        tie
      end
    end
  
    def tie
      @dealer_cards = @dealer_cards + @deck.sample[:val]
      if @dealer_cards > 21
        puts "You won! Lucky"
        # @bankroll = @bankroll + 10
      elsif @dealer_cards > @user_card
        puts "Sorry you lose!"
        # @bankroll = @bankroll - 10
      else @dealer_cards < @user_card
        puts "Good job! You won!"
        # @bankroll = @bankroll + 10
      end
    end

  end