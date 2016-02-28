def echo(s)
	s
end

def shout(s)
	s.upcase
end

def repeat(s, x = 2)
	output = ""
	for i in 1...x
		output = output + s + " "
	end
	output = output + s
	output
end

def start_of_word(s, x = 1)
	s[0,x]
end

def first_word(s)
	s[0,s.index(" ")]
end

def titleize(s)
	uncap_words = ["and", "for", "to", "the", "over"]
	s_array = s.capitalize.split(" ").map{ |x| 
		unless uncap_words.include?(x)
			x.capitalize
		else
			x
		end}
	s_array.join(" ")
end