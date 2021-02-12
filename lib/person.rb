require 'pry'
# your code goes here
class Person
    attr_reader :name, :bank_account, :happiness, :hygiene

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def bank_account=(new_amount)
        @bank_account = new_amount
    end

    def happiness=(new_amount)
        @happiness = new_amount
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end
        @happiness
    end

    def hygiene=(new_amount)
        @hygiene = new_amount
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        end
        @hygiene
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary_amount)
        @bank_account = @bank_account + salary_amount
        return "all about the benjamins"
    end

    def take_bath
        @hygiene = @hygiene + 4
        self.hygiene=(@hygiene)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
    def work_out
        @happiness = @happiness + 2
        @hygiene = @hygiene - 3
        self.happiness=(@happiness)
        self.hygiene=(@hygiene)
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        @happiness = @happiness + 3
        friend.happiness = friend.happiness + 3
        self.happiness=(@happiness)
        return "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            @happiness = @happiness - 2
            friend.happiness = friend.happiness - 2
            self.happiness=(@happiness)
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            @happiness = @happiness + 1
            friend.happiness = friend.happiness + 1
            self.happiness=(@happiness)
            return "blah blah sun blah rain"

        else
            return "blah blah blah blah blah"
        end
    end
end
#binding.pry
