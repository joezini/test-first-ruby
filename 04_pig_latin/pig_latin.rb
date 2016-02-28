$vowels = ["a","e","i","o","u"]
$punctuation = ["?","!"]

def translate_word(a)
	for i in 0...a.length
		if $vowels.include?(a[i].downcase)
			if i == 0
				return a + "ay"
			else
				return a[i..-1] + a[0..i-1] + "ay"
			end
		elsif a[i..i+1] == "qu"
			return a[i+2..-1] + a[0..i+1] + "ay"
		end
	end
end

def punctuate_word(a)
	appendix = []
	for i in 0...a.length
		if $punctuation.include?(a[i])
			appendix << a[i]
			a = a[0...i] + a[i+1..-1]
		end
	end
	translate_word(a) + appendix.join
end

def translate(s)
	final_sentence = []
	s.split(" ").map{|x| 
		if x[0] == x[0].upcase
			final_sentence << punctuate_word(x).capitalize
		else
			final_sentence << punctuate_word(x)
		end}
	final_sentence.join(" ")
end