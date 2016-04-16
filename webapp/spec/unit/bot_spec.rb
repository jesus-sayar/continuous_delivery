require_relative '../../lib/bot'

describe Bot do
  before:each do
    @bot = Bot.new
  end

  describe '#greet' do
    it 'return simple greeting whithout name' do
      @bot.greet.should eq('Hello!')
    end

    it 'return family greeting with name' do
      @bot.greet('Jesús').should eq('Hello Jesús!')
    end    
  end

  describe '#say_goodbye' do
    it 'return simple goodbye whithout name' do
      @bot.say_goodbye.should eq("Goodbye, I'll see you soon!")
    end

    it 'return family goodbye with name' do
      @bot.say_goodbye('Jesús').should eq("Goodbye Jesús, I'll see you soon!")
    end    
  end  

end