require_relative 'hero'

def read_map(number)
	text = File.read("mapa#{number}.txt")
	map = text.split "\n" 
end

def find_the_hero(mapa)
	char_hero = 'H'
	mapa.each_with_index do |current_row, row|
		hero_column = current_row.index(char_hero)
		if hero_column
			player = Hero.new
			player.row = row
			player.column = hero_column
			return player
		end
	end
end

map = read_map(1)
hero = find_the_hero(map)
puts hero.row
puts hero.column
