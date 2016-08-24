# app.rb
require 'sinatra'

class Movie
	def initialize(title, price)
		@id_movie = @movie_list.size
		@title = title
		@price = price
	end
end

class Ticket
	def initialize (id_movie, name, phone, mail)
		@id_ticket = @ticket_list.size
		@id_movie = id_movie
		@name = name
		@phone = phone
		@mail = mail
	end
end

class Cinema
	def initialize
		@movie_list = {}
		@ticket_list = {}
	end

	def create_new_ticket(id_movie, name, phone, mail)
		add_ticket_to_list(Ticket.new(id_movie, name, phone, mail))
	end

	def create_new_movie(title, price)
		add_movie_to_list(Movie.new(title, price))
	end

	def add_movie_to_list(movie)
		@movie_list[movie.id_movie] = movie
	end

	def add_ticket_to_list(ticket)
		@ticket_list[ticket.id_ticket] = ticket
	end

	def get_ticket_from_list(ticket_id)
		@ticket_list[ticket_id]
	end

	def get_movie_from_list(movie_id)
		@movie_list[movie_id]
	end

end

