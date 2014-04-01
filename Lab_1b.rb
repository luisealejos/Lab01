# Luis Eduardo Alejos Marroquín
# 20062009

class Dessert
	@@count = 0
    def initialize(name, size, calories)
		@name, @size, @calories = name, size, calories
		@@count += 1
   end

	def self.count
		@@count
	end

	def set_name(name)
		@name = name;
	end
	def get_name
		@name
	end

	def set_size(size)
		@size = size
	end
	def get_size
		@size
	end

	def set_calories(calories)
		@calories = calories
	end
	def get_calories
		@calories
	end
    
    def healthy?
		if @calories < 200
			true
		else
			false
		end
    end
    
    def delicious?
		true
    end
    
    def to_s
		"Name: #{@name} \nCalorias: #{@calories} \nSize: #{@size}"
    end
end

class JellyBean < Dessert
    def initialize(name, size, calories, flavor)
		super(name, size, calories)
		@flavor = flavor
    end

	def set_flavor(flavor)
		@flavor = flavor
	end
	def get_flavor(flavor)
		@flavor
	end

	def delicious?
		super
		if(@flavor == "black licorice")
			false
		end
	end

	def to_s
		super + "\nFlavor: #{@flavor}"
	end

end