# app.rb
require 'sinatra'
class Movie
	attr_reader :movie_id, :title, :price
	def initialize(title, price)
		@movie_list != nil ? @movie_id = @movie_list.size : @movie_id = 0
		@title = title
		@price = price
	end
end

class Ticket
	attr_reader :ticket_id, :name, :phone, :mail, :movie_id
	def initialize (movie_id, name, mail, phone)
		@ticket_list != nil ? @ticket_id = @ticket_list.size : @ticket_id = 0
		@movie_id = movie_id
		@name = name
		@phone = phone
		@mail = mail
	end
end

class Cinema
	attr_accessor :ticket_list, :movie_list
	def initialize
		@movie_list = []
		@ticket_list = []
		m1 = Movie.new('Pets',4)
		@movie_list.push(m1)
		m2 = Movie.new('Suicide Squad',7)
		@movie_list.push(m2)
		m3 = Movie.new('Now You see me 2',4)
		@movie_list.push(m3)
		m4 = Movie.new('Tarzan',4)
		@movie_list.push(m4)
	end

	def create_new_movie(title, price)
		add_movie_to_list(Movie.new(title, price))
	end

	def add_movie_to_list(movie)
		@movie_list.push(movie)
	end

	def add_ticket_to_list(ticket)
		@ticket_list.push(ticket)
	end

	def get_ticket_from_list(ticket_id)
		@ticket_list[ticket_id]
	end

	def get_movie_from_list(movie_id)
		#@movie_list[movie_id]
	end

end

cinema = Cinema.new

require './routes'







