require 'date'

class Movie
	attr_reader :title
	attr_reader :genero
	attr_reader :by_date

	def initialize(title, genero, by_date)
		@title = title
		@genero = genero
		@by_date = by_date
	end

	def <=> (other_movie)
		title <=> other_movie.title
	end


end