require 'date'
class Cinema
	def initialize(movies)
		@movies =  movies
	end

	def listing
		@movies.map {|movie| movie.title}
	end

	def add(movie)
		@movies << movie
		#@movies.push(movie)
	end

	def  finding
		#animals.find {|animal| animal == 'duck'}
		@movies.find {|movie| movie.title == 'Viernes 13'}
	end

	def remove(movie_to_remove)
		@movies.delete_if do |movie|
		movie.title = movie.movie_to_remove
		#@movies.delete(movie_to_remove)
		end
	end

	def order_by_title
		@movies.map {|movie| movie.title}.sort
		#@movies.sort! {|moviea, movieb| moviea.title <=> movieb.title }
	end

	def order_by_genero
		# movies_by_genre = @movies.select do |movie|
		# 	movie.movies_by_genre
		#end
		#movies_by_genre.sort.map {|movie| movie.title}
		@movies.map {|movie| movie.genero}.sort
		#@movies.sort! {|moviea, movieb| moviea.title <=> movieb.title}
	end

	def order_genero
		@movies.map {|movie| movie.genero}.sort
	end

	def sort_by_date
		@movies.sort {|moviea, movieb| moviea.by_date <=> movieb.by_date }.map{|movie| movie.by_date}

	end


	def between_date(date1, date2)
	movies_between_date = @movies.select do |movie| 
		movie.by_date > date1 && movie.by_date < date2
		end
	movies_between_date.map {|movie| movie.by_date}
	end


	def group_by_genre
		@movies.inject({}) do |movies_by_genre, movie|
			movies_by_genre[movie_genre] ||= []
			movies_by_genre[movie_genre]  << movie.title
			movies_by_genre
	end

	end

	def group_per_genre
		@movies.reduce({}) do |movies_per_genre, movie|
			movies_per_genre[movie_genre] ||= 0
			movies_per_genre[movie_genre]  << += 1
			movies_per_genre.count
	end


end
