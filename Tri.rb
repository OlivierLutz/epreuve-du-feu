#!C:/Ruby27-x64/bin/ruby -w
system "clear"

c = ARGV.map(&:to_i)
b = c.max
tableautri = []

while b > 0
	if c.include? b
		tableautri << b
		b -= 1
	else
		b -= 1
	end
end

print tableautri