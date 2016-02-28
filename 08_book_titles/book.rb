class Book
	$exceptions = ["a", "an", "and", "the", "to", "in", "of"]

	def title=(t)
		@title = capitalize_all(t)
	end

	def title
		@title
	end

	def capitalize_all(s)
		s_array = s.split(" ")
		cap_array = []
		for x in 0...s_array.length
			if !$exceptions.include?(s_array[x]) || x == 0
				cap_array << s_array[x].capitalize
			else
		 		cap_array << s_array[x]
			end
		end
		cap_array.join(" ")
	end
end

