# Person class
class Person
    attr_reader(:name, :happiness, :hygiene)
    attr_accessor(:bank_account)

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(new_happiness)
        @happiness =
            if new_happiness >= 10
                10
            elsif new_happiness <= 0
                0
            else
                new_happiness
            end
    end

    def hygiene=(new_hygiene)
        @hygiene =
            if new_hygiene >= 10
                10
            elsif new_hygiene <= 0
                0
            else
                new_hygiene
            end
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(money)
        @bank_account += money
        'all about the benjamins'
    end

    def take_bath
        self.hygiene = @hygiene + 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.happiness = @happiness + 2
        self.hygiene = @hygiene - 3
        '♪ another one bites the dust ♫'
    end

    def call_friend(other_person)
        self.happiness = @happiness + 3
        other_person.happiness = other_person.happiness + 3
        "Hi #{other_person.name}! It's #{@name}. How are you?"
    end

    def start_conversation(other_person, topic)
        case topic
        when 'politics'
            self.happiness = @happiness - 2
            other_person.happiness = other_person.happiness - 2
            'blah blah partisan blah lobbyist'
        when 'weather'
            self.happiness = @happiness + 1
            other_person.happiness = other_person.happiness + 1
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end
    end
end
