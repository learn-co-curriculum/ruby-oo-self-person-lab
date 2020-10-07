# your code goes here
require 'pry'
class Person 

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness
        if @happiness > 10 
            @happiness = 10
        elsif @happiness < 0 
            @happiness = 0
        end
        @happiness
    end
    
    def hygiene
        if @hygiene > 10 
            @hygiene = 10
        elsif @hygiene < 0 
            @hygiene = 0
        end
        @hygiene
        
    end

    def happy?
        self.happiness > 7 ? true: false
    end

    def clean?
        self.hygiene > 7 ? true: false
    end

    def get_paid(salary)
        self.bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4 
        p "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        p "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        p "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -=2
            friend.happiness -= 2
            p "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1 
            friend.happiness += 1
            p "blah blah sun blah rain"
        else 
            p "blah blah blah blah blah"
        end
    end

    








end


