#!C:/Ruby27-x64/bin/ruby -w
system "clear"

sudoku = Array.new
File.open(ARGV[0]).each { |line| sudoku << line.chomp }

puts sudoku

#IL faut encore configurer la vérification du carré + s'il y a aucune bonne valeur => IMPOSSIBLE 
nombre_a_trouve = 0
tableau_retour = sudoku.map(&:clone)
sudoku_2 = sudoku.map(&:clone)

ligne = 0
while ligne < sudoku.size
	colonne = 0
	while colonne < sudoku[ligne].size
		if sudoku[ligne][colonne] == "_"
			nombre_a_trouve += 1
			memoire_ligne = ligne
			memoire_colonne = colonne
			i = 1
			while i < 10
			check_ligne = false
					if sudoku[ligne].include? i.to_s 
					else
						check_ligne = true
					end
			check_colonne = false
					new_array = []
					j = 0
					while j < 10
						new_array << sudoku[j][colonne]
						j += 1
					end
					if new_array.include? i.to_s
					else
						check_colonne = true
					end
			check_carre = false
					new_array2 = []
					debut_carre_ligne = (ligne/4)*4
					debut_carre_colonne = (colonne/4)*4 
					h = 0
					while h < 3
						new_array2 << sudoku[debut_carre_ligne][debut_carre_colonne]
						new_array2 << sudoku[debut_carre_ligne][debut_carre_colonne+1]
						new_array2 << sudoku[debut_carre_ligne][debut_carre_colonne+2]
						debut_carre_ligne +=1
						h += 1
					end
					if new_array2.include? i.to_s
					else
						check_carre = true
					end
			if check_ligne == true && check_colonne == true && check_carre == true
				tableau_retour[ligne][colonne] << i.to_s
				sudoku[ligne][colonne] = i.to_s
				i = 10 #Au premier bon chiffre qu'il trouve, il ajoute dans le tableau !
			else
				i += 1 
			end
			end
			if sudoku[ligne][colonne] == "_"
			end
		end
		colonne += 1
	end
	ligne += 1
end

puts " "

check_sudoku = true
x = 0
11.times {
puts sudoku[x]
if sudoku[x].include? "_"
	check_sudoku = false
end
x += 1
}
puts check_sudoku

#if check_sudoku == false
	#Continue de passer en revue le sudoku
