#!C:/Ruby27-x64/bin/ruby -w
system "clear"

a_trier = ARGV.map(&:to_i)

flag = true

while (flag)
i = 0
flag = false
while (i < a_trier.length()-1)

	if (a_trier[i] < a_trier[i + 1])
		tmp = a_trier[i]
		a_trier[i] = a_trier[i + 1]
		a_trier[i + 1] = tmp
		i += 1
		flag = true
	else
		i += 1
	end
end
end


print a_trier