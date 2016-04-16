class Bot
	def greet(name = nil)
		name ? "Hello #{name}!" : "Hello!"
	end

	def say_goodbye(name = nil)
		start = name ? "Goodbye #{name}" : "Goodbye"
		"#{start}, I'll see you soon!"
	end
end