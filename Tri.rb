#!C:/Ruby27-x64/bin/ruby -w
system "clear"

c = ARGV.map(&:to_i) #transformer en nombre chaque élement du tableau
b = c.max
tableautri = []

while b > 0
	if c.include? b
		tmp = b
		tableautri << b
		if c.include? b
		b -= 1
	else
		b -= 1
	end
end

print tableautri


i = 0
while (i < a_trier.length()-1)
	if (a_trier[i] < a_trier[i + 1])
		tmp = a_trier[i]
		a_trier[i] = a_trier[i + 1]
		a_trier[i + 1] = tmp
		i += 1
	else
		i += 1
	end
end

j = a_trier.length
while (j < 3)
	if (a_trier[j] < a_trier[j - 1])
		tmp = a_trier[j]
		a_trier[j] = a_trier[j - 1]
		a_trier[j - 1] = tmp
		j -= 1
	else
		j -= 1
	end
end