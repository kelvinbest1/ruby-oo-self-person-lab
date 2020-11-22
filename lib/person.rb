require "pry"
class Person
    attr_accessor  :hygiene, :happiness, :bank_account
    attr_reader :name
    
    
    def initialize(name)
        @bank_account=25
        @happiness=8
        @hygiene=8
        @name = name
     end

     def happiness=(happiness)
        @happiness=happiness
        if @happiness>10
            @happiness=10
        elsif @happiness<0
            @happiness=0
        end
     end
     def hygiene=(hygiene)
        @hygiene=hygiene
        if @hygiene>10
            @hygiene=10
        elsif @hygiene<0
            @hygiene=0
        end
    end

    def clean?
        if @hygiene>7
            true
          else
            false
          end
    end

    def start_conversation(person,topic)

        if topic == 'weather'
            person.happiness +=1
            self.happiness +=1
             "blah blah sun blah rain"
        elsif topic == 'politics' 
            person.happiness -=2
            self.happiness -=2
             "blah blah partisan blah lobbyist"
        else 
            person.happiness
             "blah blah blah blah blah"
        end
    end

    def call_friend(person)
        
        self.happiness +=3
        person.happiness +=3
        if self
            "Hi Felix! It's Penelope. How are you?"
        elsif person
            "Hi Penelope! It's Felix. How are you?"
        end
    end

    def work_out()
        self.hygiene -=3
        self.happiness +=2
        "♪ another one bites the dust ♫"
    end

    def get_paid(salary)
        @bank_account+=100
         "all about the benjamins"
    end

    def take_bath
        
        self.hygiene +=4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def happy?
        if @happiness>7
            true
          else
            false
          end
        end
          
    
    end

