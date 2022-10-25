# your code goes here
class Person
    attr_reader :name, :happiness
    attr_accessor :bank_account, :hygiene

    def initialize (name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(val)
        if(val < 0)
            @happiness = 0
        elsif(val <= 10)
            @happiness = val
        else
            @happiness = 10
        end
    end

    def hygiene=(hygiene_val)
        if(hygiene_val < 0)
            @hygiene = 0
        elsif(hygiene_val <= 10)
            @hygiene = hygiene_val
        else
            @hygiene = 10
        end
    end

    def clean?
        hygiene > 7
    end

    def happy?
        happiness > 7
    end

    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = (@hygiene +4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = (@hygiene -3)
        self.happiness = (happiness + 2)
        "♪ another one bites the dust ♫"
    end

    def call_friend (friend)
        self.happiness = (@happiness + 3)
        friend.happiness = (friend.happiness + 3)

        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(person, topic)
        case topic
        when 'politics'
            self.happiness = (@happiness -2)
            person.happiness = (person.happiness - 2)
            "blah blah partisan blah lobbyist"
    
        when 'weather'
            self.happiness = (@happiness + 1)
            person.happiness = (person.happiness + 1)
            "blah blah sun blah rain"
    
        else
            "blah blah blah blah blah"
        end
    end
end
    #     if (topic == 'politics')
    #         self.happiness = (@happiness -2)
    #         person.happiness = (@person.happiness - 2)
    #         return "blah blah partisan blah lobbyist"

    #     elsif (topic == "weather")
    #         self.happiness = (@happiness + 1)
    #         person.happiness = (@person.happiness + 1)
    #         return "blah blah sun blah rain"

    #     else
    #         return "blah blah blah blah blah"
    #     end
    # end
    