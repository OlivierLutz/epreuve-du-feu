#!C:/Ruby27-x64/bin/ruby -w
system "clear"

c1 = ARGV[0]
c2 = ARGV[1]

petit_carré = []
position = 0
File.foreach(c1) do |line|
	petit_carré[position] = line.chomp.split('').map(&:to_i) #chomp permet de supprimer le retour à la ligne /n
	position += 1
end

gd_carré = []
position = 0
File.foreach(c2) do |line|
	gd_carré[position] = line.chomp.split('').map(&:to_i)
	position += 1
end

x = 0
y = 0
xbis = 0
ybis = 0
a = 0
b = 0
all = 0
all2 = 0
tmp_x = 0
tmp_y = 0
while all < (gd_carré[0].size * gd_carré.size)
	if 	petit_carré[a][b] == gd_carré [x][y] && (gd_carré.size - x) >= petit_carré.size && (gd_carré[0].size - y) >= petit_carré[0].size
		tmp_x = x
		tmp_y = y
		#xbis = tmp_x
		#ybis = tmp_y
		#print "|"
		#print tmp_x
		#print tmp_y
		#print "|"
		while all2 < (petit_carré[0].size * petit_carré.size) && petit_carré[a][b] == gd_carré [x][y] #or b = petit_carré.size
			#puts "/"
			#print petit_carré[a][b]
			#print gd_carré [x][y]
			#print all2
				if 	petit_carré[a][b] == gd_carré [x][y]
					b +=1
					y +=1
					all2 +=1
					#puts "-------"
					#puts all2
					#puts "-------"
						if 	b == petit_carré[a].size
							y -= petit_carré[a].size
							a += 1
							b = 0
							x += 1
							if 	all2 == (petit_carré[0].size * petit_carré.size) #donner la solution coordonnée et continue l'analyse, voir si y a pas d'autres carrées
								puts "#{tmp_x},#{tmp_y}"
								a = 0
								b = 0
								all +=1
									if 	y == gd_carré[0].size
										y = 0
										x += 1
									else
									end
							else
							end
						else
						end
				else
					print petit_carré[a][b]
					puts gd_carré [x][y]
					x = tmp_x
					y = tmp_y
					b = 0
					a = 0
					y +=1
					all +=1
						if 	y == gd_carré[0].size
							y = 0
							x += 1
						else
						end
				end
		end
		x = tmp_x
		y = tmp_y+1
		all += 1
		all2 = 0
			if 	y == gd_carré[0].size
				y = 0
				x += 1
			else
			end
	else
		#print "|"
		#print tmp_x
		#print tmp_y
		#print "|"
		#print gd_carré[x][y]
		#print "-("
		#print all
		#print ")"
		b = 0
		a = 0
		y +=1
		all +=1
			if 	y == gd_carré[0].size
				y = 0
				x += 1
			else
			end
	end
end
