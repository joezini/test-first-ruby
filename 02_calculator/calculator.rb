def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(a)
	total = 0
	a.each do |x| 
		total = total + x
	end
	total
end

def multiply(*a)
	total = 1
	a.each do |x|
		total = total * x
	end
	total
end

def power(a, b)
	a**b
end

def factorial(a)
	total = 1
	if a > 1
		for i in 1..a
			total = total * i
		end
	end
	total
end