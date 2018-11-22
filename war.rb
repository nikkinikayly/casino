class War
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
        {val:11, name:'J'},
        {val:12, name:'Q'},
        {val:13, name:'K'},
        {val:14, name:'A'}]
        menu

    end

    def menu 
        puts "Welcome to War"
        puts "Minimum to play is $5"
        puts "How much do you want to bet?"
          @bankroll = gets.to_i   
          if @bankroll < 5 
            puts "Minimum $5 for this game."   
            sleep(2)
            menu
          else 
            deal_cards 
          end 
    end

    def deal_cards
        @dealer_card = @deck.sample
        @user_card = @deck.sample
        if @dealer_card[:val] > @user_card[:val]
            loses           
        elsif @dealer_card[:val] < @user_card[:val]
            wins
        else 
          draw 
        end
    end

    def draw
      @bankroll = @bankroll
      puts "The dealer card is #{@dealer_card[:name]} and your card is #{@user_card[:name]}."
      puts"It's a draw. Let's try again."
      puts "You have $#{@bankroll} in your account now."
    end

    def loses
        @bankroll = @bankroll - 5
        puts "The dealer card is #{@dealer_card[:name]} and your card is #{@user_card[:name]}."
        puts "You lost, sorry!"
        puts "You have $#{@bankroll} in your account now."
    end

    def wins
        @bankroll = @bankroll + 5
        puts "The dealer card is #{@dealer_card[:name]} and your card is #{@user_card[:name]}"
        puts "You won! Great job!"
        puts "You have $#{@bankroll} in your account now."  
    end

end