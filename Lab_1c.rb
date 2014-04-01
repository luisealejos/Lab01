# Luis Eduardo Alejos Marroquín
# 20062009

module Action
	def jump
		@distance = rand(4) + 2
		puts "I jumped forward #{@distance} feet!"
	end
  
	def run(v)
		t = 10.0 / v
		sleep(t)
		p "10 metros recorridos en #{t} segundos a una velocidad de #{v} m/s"
	end
end

class Rabbit
  include Action
  
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
end

class Cricket
  include Action
  
  attr_reader :name
  
	def initialize(name)
		@name = name
	end
  
	def chirp
		num = rand(91) + 10
		num.times do
			p "Chirp... chirp!!"
		end
	end
end