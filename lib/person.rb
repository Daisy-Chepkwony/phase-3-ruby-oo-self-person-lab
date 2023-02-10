# your code goes here
class Person
    attr_reader :name 
    attr_accessor :bank_account, :happiness, :hygiene, :cleanliness
  
    def initialize(name,bank_account=25,happiness=8,hygiene=8)
      @name = name
      @bank_account = bank_account
      self.happiness = happiness
      self.hygiene = hygiene
    end
    def happiness=(value)
        @happiness = [[value, 0].max,10].min
      end
    def hygiene=(value)
        @hygiene=[[value,0].max,10].min
      end
      def happy?
        happiness>7
      end
      def clean?
        hygiene>7
      end
      def get_paid(amount)
        @bank_account+=amount
        return "all about the benjamins"
      end
      def take_bath
        # @hygiene += 4
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫" 
      end
      def work_out
        self.hygiene -= 3
        self.happiness += 2
        return '♪ another one bites the dust ♫'
      end
      def call_friend(jebby)
        jebby.happiness+=3
        self.happiness += 3
        return "Hi #{jebby.name}! It's #{self.name}. How are you?"
        return "Hi Felix! It's Penelope. How are you?"
      end
      def start_conversation(friend,topic)
        if topic == "politics"
          [self,friend].each{|friend|friend.happiness -= 2}
          return 'blah blah partisan blah lobbyist'
        end
        if topic == "weather"
          [self,friend].each{|friend|friend.happiness += 1}
          return 'blah blah sun blah rain'
         end 
        if topic != "weather" || "politics"
          return 'blah blah blah blah blah'
      end
    end

  end 



  


